import datetime as dt
import os
import tempfile
import time
import random
import pyomo.environ as pyo
from pyomo.opt import SolverFactory, SolverStatus, TerminationCondition
from calendarapp.models.opt_scope_day import OptScopeDay
from calendarapp.models.opt_scope_day_shift_type import OptScopeDayShiftType
from calendarapp.models.opt_scope_nurse import OptScopeNurse
from calendarapp.models.opt_scope_nurse_day_shift_type import OptScopeNurseDayShiftType
from calendarapp.models.opt_scope_nurseday import OptScopeNurseDay
from calendarapp.models.opt_scope_nurse_shift_type import OptScopeNurseShiftType
from calendarapp.models.opt_scope_shift_type import OptScopeShiftType
from pyomo.core import quicksum
from django.conf import settings

# %%
class OptimizerIteration:
    def __init__(self, iterationnr, startdt,
                 optimizer, scopeselection,global_object):
        self.IterationNr = iterationnr
        self.StartDT = startdt
        self.EndDT = dt.datetime.max
        self.TotalKPIHard = 0.0
        self.TotalKPISoft = 0.0
        self.IsFeasible = False
        self.IsRollback = False
        self.OptScopeNurse = []
        self.OptScopeDay = []
        self.OptScopeShiftType = []
        self.DurationSolveInSeconds = 0.0
        self.TimeElapsedInSeconds = 0.0
        # Relations
        self.Optimizer = optimizer
        optimizer.set_relation_optimizer_iteration(self)
        self.ScopeSelection = scopeselection
        scopeselection.set_relation_optimizer_iteration(self)
        self.global_object=global_object

    def set_relation_optscope_nurse(self, optscope_nurse):
        self.OptScopeNurse.append(optscope_nurse)

    def set_relation_optscope_day(self, optscope_day):
        self.OptScopeDay.append(optscope_day)

    def set_relation_optscope_shifttype(self, optscope_shifttype):
        self.OptScopeShiftType.append(optscope_shifttype)

    def unassign_shifts(self):
        nurses = [optscopenurse.Nurse for optscopenurse in self.OptScopeNurse]
        days = [optscopeday.Day for optscopeday in self.OptScopeDay]
        for n in nurses:
            for d in days:
                nurseday = [nd for nd in n.NurseDay if nd.Day == d][0]
                if nurseday.AssignedShift != [] and nurseday.AssignedShift.IsInsideOptScope:
                    nurseday.unassign_shift()

    def plan_optimizer_solution(self):
        for optscope_nurse in self.OptScopeNurse:
            for optscope_nurseday in optscope_nurse.OptScopeNurseDay:
                if optscope_nurseday.NurseDay.AssignedShift != [] and optscope_nurseday.NurseDay.AssignedShift.ShiftID in [
                    optscope_s.ShiftType.ShiftID for optscope_s in self.OptScopeShiftType]:
                    optscope_nurseday.NurseDay.unassign_shift()
                if optscope_nurseday.AssignedShift != []:
                    optscope_nurseday.NurseDay.assign_shift(optscope_nurseday.AssignedShift.ShiftType)

    def create_optscope_objects(self, nurses, days, shifttypes):
        # OptScopeNurse
        for n in nurses:
            OptScopeNurse(self, n)
        # OptScopeDay
        for d in days:
            OptScopeDay(self, d)
        for optscope_d in self.OptScopeDay:
            optscope_d.get_next()
            optscope_d.get_prev()
        # OptScopeShiftType
        for s in shifttypes:
            OptScopeShiftType(self, s)
        # OptScopeNurseShiftType
        for optscope_nurse in self.OptScopeNurse:
            for optscope_shifttype in self.OptScopeShiftType:
                nurseshifttype = [ns for ns in optscope_nurse.Nurse.NurseShiftType if
                                  ns.ShiftType == optscope_shifttype.ShiftType]
                if len(nurseshifttype) > 0:
                    nurseshifttype_instance = nurseshifttype[0]
                    OptScopeNurseShiftType(optscope_nurse, optscope_shifttype, nurseshifttype_instance)
        # OptScopeNurseDay
        for optscope_nurse in self.OptScopeNurse:
            for optscope_day in self.OptScopeDay:
                nurseday = [nd for nd in optscope_nurse.Nurse.NurseDay if nd.Day == optscope_day.Day]
                if len(nurseday) > 0:
                    nurseday_instance = nurseday[0]
                    OptScopeNurseDay(optscope_nurse, optscope_day, nurseday_instance)
                    nurseday_instance.NrSelectedInOptScope = nurseday_instance.NrSelectedInOptScope + 1
        # OptScopeDayShiftType
        for optscope_day in self.OptScopeDay:
            for optscope_shifttype in self.OptScopeShiftType:
                dayshifttype = [ds for ds in optscope_day.Day.DayShiftType if
                                ds.ShiftType == optscope_shifttype.ShiftType]
                if len(dayshifttype) > 0:
                    dayshifttype_instance = dayshifttype[0]
                    OptScopeDayShiftType(optscope_day, optscope_shifttype, dayshifttype_instance)
                    dayshifttype_instance.NrSelectedInOptScope = dayshifttype_instance.NrSelectedInOptScope + 1
        # OptScopeNurseDayShiftType
        for optscope_nurse in self.OptScopeNurse:
            for optscope_day in self.OptScopeDay:
                optscope_nurseday = \
                [osnd for osnd in optscope_nurse.OptScopeNurseDay if osnd.OptScopeDay == optscope_day][0]
                for optscope_shifttype in self.OptScopeShiftType:
                    nursedayshifttype = [nds for nds in optscope_nurse.Nurse.NurseDayShiftType if
                                         nds.Day == optscope_day.Day and nds.ShiftType == optscope_shifttype.ShiftType]
                    if len(nursedayshifttype) > 0:
                        nursedayshifttype_instance = nursedayshifttype[0]
                        OptScopeNurseDayShiftType(optscope_nurse, optscope_day, optscope_shifttype, optscope_nurseday,
                                                  nursedayshifttype_instance)
                        nursedayshifttype_instance.NrSelectedInOptScope = nursedayshifttype_instance.NrSelectedInOptScope + 1

    def get_nurse(self, n):
        nurse = [optscope_n.Nurse for optscope_n in self.OptScopeNurse if optscope_n.Nurse.EmployeeID == n][0]
        return nurse

    def get_nurseday(self, n, d):
        nurse = self.get_nurse(n)
        nurseday = [nd for nd in nurse.NurseDay if nd.Day.DayID == d][0]
        return nurseday

    def get_shifttype(self, s):
        shifttype = \
        [optscope_s.ShiftType for optscope_s in self.OptScopeShiftType if optscope_s.ShiftType.ShiftID == s][0]
        return shifttype

    def get_nurseshifttype(self, n, s):
        nurse = self.get_nurse(n)
        nurseshifttype = [ns for ns in nurse.NurseShiftType if ns.ShiftType.ShiftID == s][0]
        return nurseshifttype

    def get_nursedayshifttype(self, s, n, d):
        nurseday = self.get_nurseday(n, d)
        nursedayshifttype = [nsd for nsd in nurseday.NurseDayShiftType if nsd.ShiftType.ShiftID == s]
        return nursedayshifttype

    def get_day(self, d):
        day = [optscope_d.Day for optscope_d in self.OptScopeDay if optscope_d.Day.DayID == d][0]
        return day

    def get_dayshifttype(self, s, d):
        day = self.get_day(d)
        day_shifttype = [ds for ds in day.DayShiftType if ds.ShiftType.ShiftID == s][0]
        return day_shifttype

    def get_minutes_planned_outscope(self, n):
        nurse = self.get_nurse(n)
        minutes_planned_outscope = 0.0
        for nd in nurse.NurseDay:
            if (not nd.Day.IsInsideOptScope and nd.AssignedShift != []) or (
                    nd.AssignedShift != [] and not nd.AssignedShift.IsInsideOptScope):
                minutes_planned_outscope = minutes_planned_outscope + nd.AssignedShift.LengthInMins
        return minutes_planned_outscope

    def get_shift_planned_outscope(self, s, d):
        shift_planned_outscope = 0
        nurses_outscope = [nurse for nurse in self.global_object.Nurse if not nurse.IsInsideOptScope]
        for nurse_outscope in nurses_outscope:
            nurse_outscope_day = [nd for nd in nurse_outscope.NurseDay if nd.Day.DayID == d][0]
            if nurse_outscope_day.AssignedShift != [] and nurse_outscope_day.AssignedShift.ShiftID == s:
                shift_planned_outscope = shift_planned_outscope + 1
        return shift_planned_outscope

    def initialize_mip(self):
        initialization_start = time.time()
        model = pyo.AbstractModel(name='NurseSchedulingProblem')

        # Constraint 1: OneShiftOneDay
        # Employees cannot be assigned more than one shift on a day.
        def one_shift_one_day(model, n, d):
            rhs = 1.0
            # If this NurseDay has shift assignment from a shift outside scope, rhs = 0
            nurseday = self.get_nurseday(n, d)
            if nurseday.AssignedShift != [] and not nurseday.AssignedShift.IsInsideOptScope:
                rhs = 0.0
            return sum(model.IsAssign[s, n, d] for s in model.SHIFTTYPES) + model.IsRest[n, d] == rhs

        # Constraint 2a: ShiftRotation UB
        def shift_rotation_ub(model, s, n, d):
            nurseday = self.get_nurseday(n, d)
            #print(nurseday)
            shifttype = self.get_shifttype(s)
            #print(shifttype)
            # Case 1: If the next day has assigned shift that's forbidden after s and that assigned shift is not in scope, set IsAssign = 0
            if nurseday.Next != [] and nurseday.Next.AssignedShift != [] and not nurseday.Next.AssignedShift.IsInsideOptScope and nurseday.Next.AssignedShift.ShiftID in shifttype.ForbiddenShifts:
                # print('s', s, 'n', n, 'd', d, 'case 1')
                return model.IsAssign[s, n, d] == 0
            # Case 2: If the previous day has assigned shift, in which s is forbidden after that shift, and that assigned shift is not in scope, set IsAssign = 0
            elif nurseday.Previous != [] and nurseday.Previous.AssignedShift != [] and not nurseday.Previous.AssignedShift.IsInsideOptScope and s in nurseday.Previous.AssignedShift.ForbiddenShifts:
                # print('s', s, 'n', n, 'd', d, 'case 2')
                return model.IsAssign[s, n, d] == 0
            # Case 3: If this NurseDay is the first inscope, but not the first in planning horizon and
            # If the prev NurseDay outside scope has assigned shift, set IsAssign UB = 0 for forbidden shifts
            elif nurseday.Previous != [] and not nurseday.Previous.IsInsideOptScope and nurseday.Previous.AssignedShift != [] and s in nurseday.Previous.AssignedShift.ForbiddenShifts:
                # print('s', s, 'n', n, 'd', d, 'case 3')
                return model.IsAssign[s, n, d] == 0
            # Case 4: If this NurseDay is the last inscope, but not the last in planning horizon and
            # If the next NurseDay outside scope has assigned shift, set IsAssign UB = 0 for forbidden shifts
            elif nurseday.Next != [] and not nurseday.Next.IsInsideOptScope and nurseday.Next.AssignedShift != [] and nurseday.Next.AssignedShift.ShiftID in shifttype.ForbiddenShifts:
                # print('s', s, 'n', n, 'd', d, 'case 4')
                return model.IsAssign[s, n, d] == 0
            else:
                return pyo.Constraint.Skip

        # There are shifts which cannot follow the shift on the previous day, as defined in SECTION_SHIFTS.
        def shift_rotation(model, s, n, d):
            nurseday = self.get_nurseday(n, d)
            shifttype = self.get_shifttype(s)

            if nurseday.Next != [] and nurseday.Next.IsInsideOptScope:
                return model.IsAssign[s, n, d] + sum(
                    model.IsAssign[r, n, d + 1] for r in model.SHIFTTYPES if r in shifttype.ForbiddenShifts) <= 1
            else:
                return pyo.Constraint.Skip

        # Constraint 3: MaxNrOfShifts
        # The maximum number of shifts of each type that can be assigned to each employee are defined in SECTION_STAFF in the field MaxShifts.
        def max_nr_shifts(model, n, s):
            nurseshift = self.get_nurseshifttype(n, s)
            nurse = self.get_nurse(n)
            assigned_shift_outscope = 0
            for nd in nurse.NurseDay:
                # If a nd is outside scope and it plans shifttype s
                if not nd.Day.IsInsideOptScope and nd.AssignedShift != [] and nd.AssignedShift.ShiftID == s:
                    assigned_shift_outscope = assigned_shift_outscope + 1

            return sum(model.IsAssign[s, n, d] for d in model.DAYS) <= nurseshift.MaxShifts - assigned_shift_outscope

        # Constraint 4: MaxTotalMinutes
        # The maximum amount of total time in minutes that can be assigned to each employee is defined in SECTION_STAFF in the field MaxTotalMinutes.
        # The duration in minutes of each shift is defined in SECTION_SHIFTS in the field Length in mins.
        def max_total_minutes(model, n):
            nurse = self.get_nurse(n)
            minutes_planned_outscope = self.get_minutes_planned_outscope(n)
            return sum(sum(self.get_shifttype(s).LengthInMins * model.IsAssign[s, n, d] for d in model.DAYS) for s in
                       model.SHIFTTYPES) <= nurse.MaxTotalMins - minutes_planned_outscope

        # Constraint 5: MinTotalMinutes
        # The minimum amount of total time in minutes that must be assigned to each employee is defined in SECTION_STAFF in the field MinTotalMinutes.
        # The duration in minutes of each shift is defined in SECTION_SHIFTS in the field Length in mins.
        def min_total_minutes(model, n):
            nurse = self.get_nurse(n)
            minutes_planned_outscope = self.get_minutes_planned_outscope(n)
            return quicksum(sum(self.get_shifttype(s).LengthInMins * model.IsAssign[s, n, d] for d in model.DAYS) for s in
                       model.SHIFTTYPES) + model.MinTotalMinsUnder[n] >= nurse.MinTotalMins - minutes_planned_outscope

        # Constraint 6: MaxConsShifts
        # The maximum number of consecutive shifts that can be worked before having a day off.
        # This constraint always assumes that the last day of the previous planning period was a day off and
        # the first day of the next planning period is a day off.
        def max_cons_shifts_backward(model, n, d):
            nurse = self.get_nurse(n)
            max_cons_shift = nurse.MaxConsShifts
            if d >= max_cons_shift:
                rest_planned_within_max_cons_shift_outscope = 0
                for nd in nurse.NurseDay:
                    if not nd.IsInsideOptScope and nd.Day.DayID >= d - max_cons_shift and nd.Day.DayID <= d and nd.AssignedShift == []:
                        rest_planned_within_max_cons_shift_outscope = rest_planned_within_max_cons_shift_outscope + 1
                return sum(model.IsRest[n, prevd] for prevd in model.DAYS if
                           prevd >= d - max_cons_shift and prevd <= d) >= 1 - rest_planned_within_max_cons_shift_outscope
            else:
                return pyo.Constraint.Skip

        def max_cons_shifts_forward(model, n, d):
            nurse = self.get_nurse(n)
            last_day_in_scope = max([optscope_d.Day.DayID for optscope_d in self.OptScopeDay])
            max_cons_shift = nurse.MaxConsShifts
            if d + max_cons_shift > last_day_in_scope and d + max_cons_shift < self.global_object.HorizonLength:
                rest_planned_within_max_cons_shift_outscope = 0
                for nd in nurse.NurseDay:
                    if not nd.IsInsideOptScope and nd.Day.DayID > last_day_in_scope and nd.Day.DayID <= d + max_cons_shift and nd.AssignedShift == []:
                        rest_planned_within_max_cons_shift_outscope = rest_planned_within_max_cons_shift_outscope + 1
                return sum(model.IsRest[n, nextd] for nextd in model.DAYS if
                           nextd >= d and nextd <= d + max_cons_shift) >= 1 - rest_planned_within_max_cons_shift_outscope
            else:
                return pyo.Constraint.Skip

        def max_cons_shifts_in_between(model, n):
            nurse = self.get_nurse(n)
            first_day_in_scope = min([optscope_d.Day.DayID for optscope_d in self.OptScopeDay])
            last_day_in_scope = max([optscope_d.Day.DayID for optscope_d in self.OptScopeDay])
            first_nurseday_in_scope = self.get_nurseday(n, first_day_in_scope)
            last_nurseday_in_scope = self.get_nurseday(n, last_day_in_scope)
            if first_nurseday_in_scope.Previous and first_nurseday_in_scope.Previous.AssignedShift != [] \
                    and last_nurseday_in_scope.Next and last_nurseday_in_scope.Next.AssignedShift != []:
                # Get first day of working block
                first_day_working_block = first_nurseday_in_scope.Previous
                while first_day_working_block != [] and first_day_working_block.Previous != [] and first_day_working_block.Previous.AssignedShift != []:
                    first_day_working_block = first_day_working_block.Previous
                # Get last day of working block
                last_day_working_block = last_nurseday_in_scope.Next
                while last_day_working_block != [] and last_day_working_block.Next != [] and last_day_working_block.Next.AssignedShift != []:
                    last_day_working_block = last_day_working_block.Next
                # Create constraint
                if last_day_working_block.Day.DayID - first_day_working_block.Day.DayID + 1 > nurse.MaxConsShifts:
                    return sum(model.IsRest[n, d] for d in model.DAYS) >= 1
                else:
                    return pyo.Constraint.Skip
            else:
                return pyo.Constraint.Skip

        # Constraint 7: MinConsShifts
        # The minimum number of shifts that must be worked before having a day off.
        # This constraint always assumes that there are an infinite number of consecutive shifts assigned at the end of the previous planning period and
        # at the start of the next planning period.
        def is_end_of_work_block(model, n, d):
            nurse = self.get_nurse(n)
            if nurse.MinConsShifts > 1:
                nurseday = self.get_nurseday(n, d)
                if nurseday.Next != []:
                    if nurseday.Next.IsInsideOptScope:
                        return model.IsEndOfWorkBlock[n, d] >= model.IsRest[n, d + 1] - model.IsRest[n, d]
                    else:
                        is_next_nurseday_rest = 0
                        if nurseday.Next.AssignedShift == []:
                            is_next_nurseday_rest = 1
                        return model.IsEndOfWorkBlock[n, d] >= is_next_nurseday_rest - model.IsRest[n, d]
                else:
                    # Last day can't be end of work block because this constraint assumes infinite number of consecutive shifts assigned at the start of the
                    # next planning period.
                    return model.IsEndOfWorkBlock[n, d] == 0
            else:
                return pyo.Constraint.Skip

        def min_cons_shift_inscope(model, n, d):
            nurse = self.get_nurse(n)
            if nurse.MinConsShifts > 1:
                first_day_in_scope = min([optscope_d.Day.DayID for optscope_d in self.OptScopeDay])
                min_cons_shifts = min(nurse.MinConsShifts, d + 1)  # +1 because dayID starts from 0
                min_cons_shifts_considered = min_cons_shifts - 1  # -1 because the last day of working block is represented by IsEndOfWorkBlock variable
                rest_planned_within_min_cons_shift_outscope = 0
                for nd in nurse.NurseDay:
                    if not nd.IsInsideOptScope and nd.Day.DayID >= d - min_cons_shifts_considered and nd.Day.DayID < first_day_in_scope and nd.AssignedShift == []:
                        rest_planned_within_min_cons_shift_outscope = rest_planned_within_min_cons_shift_outscope + 1
                return min_cons_shifts_considered * model.IsEndOfWorkBlock[n, d] + sum(
                    model.IsRest[n, prevd] for prevd in model.DAYS if
                    prevd >= d - min_cons_shifts_considered and prevd <= d - 1) + rest_planned_within_min_cons_shift_outscope <= min_cons_shifts_considered
            else:
                return pyo.Constraint.Skip

        def min_cons_shift_backward(model, n):
            nurse = self.get_nurse(n)
            if nurse.MinConsShifts > 1:
                first_day_in_scope = min([optscope_d.Day.DayID for optscope_d in self.OptScopeDay])
                start_of_work_block_outscope = [nd for nd in nurse.NurseDay if
                                                nd.Previous != [] and nd.AssignedShift != [] and nd.Previous.AssignedShift == [] and nd.Day.DayID < first_day_in_scope]
                min_cons_shifts = nurse.MinConsShifts

                if len(start_of_work_block_outscope) > 0:
                    last_start_of_work_block_outscope = max([nd.Day.DayID for nd in start_of_work_block_outscope])
                    end_of_work_block = last_start_of_work_block_outscope + min_cons_shifts - 1
                    if end_of_work_block >= first_day_in_scope:
                        return sum(model.IsRest[n, prevd] for prevd in model.DAYS if prevd <= end_of_work_block) == 0
                    else:
                        return pyo.Constraint.Skip
                else:
                    return pyo.Constraint.Skip
            else:
                return pyo.Constraint.Skip

        def min_cons_shift_forward(model, n):
            nurse = self.get_nurse(n)
            if nurse.MinConsShifts > 1:
                last_day_in_scope = max([optscope_d.Day.DayID for optscope_d in self.OptScopeDay])
                end_of_work_block_outscope = [nd for nd in nurse.NurseDay if
                                              nd.Next != [] and nd.AssignedShift != [] and nd.Next.AssignedShift == [] and nd.Day.DayID > last_day_in_scope]
                min_cons_shifts = nurse.MinConsShifts

                if len(end_of_work_block_outscope) > 0:
                    first_end_of_work_block_outscope = min([nd.Day.DayID for nd in end_of_work_block_outscope])
                    start_of_work_block = first_end_of_work_block_outscope - min_cons_shifts + 1
                    if start_of_work_block <= last_day_in_scope:
                        return sum(model.IsRest[n, nextd] for nextd in model.DAYS if nextd >= start_of_work_block) == 0
                    else:
                        return pyo.Constraint.Skip
                else:
                    return pyo.Constraint.Skip
            else:
                return pyo.Constraint.Skip

        # Constraint 8: MinConsDaysOff
        # The minimum number of consecutive days off that must be assigned before assigning a shift.
        # This constraint always assumes that there are an infinite number of consecutive days off assigned at the end of the previous planning period and
        # at the start of the next planning period.
        def is_end_of_rest_block(model, n, d):
            nurse = self.get_nurse(n)
            if nurse.MinConsDaysOff > 1:
                nurseday = self.get_nurseday(n, d)
                if nurseday.Next != []:
                    if nurseday.Next.IsInsideOptScope:
                        return model.IsEndOfRestBlock[n, d] >= model.IsRest[n, d] - model.IsRest[n, d + 1]
                    else:
                        is_next_nurseday_rest = 0
                        if nurseday.Next.AssignedShift == []:
                            is_next_nurseday_rest = 1
                        return model.IsEndOfRestBlock[n, d] >= model.IsRest[n, d] - is_next_nurseday_rest
                else:
                    # Last day can't be end of rest block because this constraint assumes infinite number of consecutive days off assigned at the start of the
                    # next planning period.
                    return model.IsEndOfRestBlock[n, d] == 0
            else:
                return pyo.Constraint.Skip

        def min_cons_days_off_inscope(model, n, d):
            nurse = self.get_nurse(n)
            if nurse.MinConsDaysOff > 1:
                first_day_in_scope = min([optscope_d.Day.DayID for optscope_d in self.OptScopeDay])
                min_cons_day_offs = min(nurse.MinConsDaysOff, d + 1)  # +1 because dayID starts from 0
                min_cons_day_offs_considered = min_cons_day_offs - 1  # -1 because the last day of rest block is represented by IsEndOfRestBlock variable
                rest_planned_within_min_cons_daysoff_outscope = 0
                for nd in nurse.NurseDay:
                    if not nd.IsInsideOptScope and nd.Day.DayID >= d - min_cons_day_offs_considered and nd.Day.DayID < first_day_in_scope and nd.AssignedShift == []:
                        rest_planned_within_min_cons_daysoff_outscope = rest_planned_within_min_cons_daysoff_outscope + 1
                return sum(model.IsRest[n, prevd] for prevd in model.DAYS if
                           prevd >= d - min_cons_day_offs_considered and prevd <= d - 1) + rest_planned_within_min_cons_daysoff_outscope >= min_cons_day_offs_considered * \
                    model.IsEndOfRestBlock[n, d]
            else:
                return pyo.Constraint.Skip

        def min_cons_days_off_backward(model, n):
            nurse = self.get_nurse(n)
            if nurse.MinConsDaysOff > 1:
                first_day_in_scope = min([optscope_d.Day.DayID for optscope_d in self.OptScopeDay])
                start_of_rest_block_outscope = [nd for nd in nurse.NurseDay if
                                                nd.Previous != [] and nd.AssignedShift == [] and nd.Previous.AssignedShift != [] and nd.Day.DayID < first_day_in_scope]
                min_cons_day_offs = nurse.MinConsDaysOff

                if len(start_of_rest_block_outscope) > 0:
                    last_start_of_rest_block_outscope = max([nd.Day.DayID for nd in start_of_rest_block_outscope])
                    last_day_in_scope = max([optscope_d.Day.DayID for optscope_d in self.OptScopeDay])
                    end_of_rest_block = min(last_start_of_rest_block_outscope + min_cons_day_offs - 1,
                                            last_day_in_scope)
                    if end_of_rest_block >= first_day_in_scope:
                        return sum(model.IsRest[n, d] for d in model.DAYS if
                                   d <= end_of_rest_block) == end_of_rest_block - first_day_in_scope + 1
                    else:
                        return pyo.Constraint.Skip
                else:
                    return pyo.Constraint.Skip
            else:
                return pyo.Constraint.Skip

        def min_cons_days_off_forward(model, n):
            nurse = self.get_nurse(n)
            if nurse.MinConsDaysOff > 1:
                last_day_in_scope = max([optscope_d.Day.DayID for optscope_d in self.OptScopeDay])
                end_of_rest_block_outscope = [nd for nd in nurse.NurseDay if
                                              nd.Next != [] and nd.AssignedShift == [] and nd.Next.AssignedShift != [] and nd.Day.DayID > last_day_in_scope]
                min_cons_day_offs = nurse.MinConsDaysOff

                if len(end_of_rest_block_outscope) > 0:
                    first_end_of_rest_block_outscope = min([nd.Day.DayID for nd in end_of_rest_block_outscope])
                    first_day_in_scope = min([optscope_d.Day.DayID for optscope_d in self.OptScopeDay])
                    start_of_rest_block = max(first_end_of_rest_block_outscope - min_cons_day_offs + 1,
                                              first_day_in_scope)
                    if start_of_rest_block <= last_day_in_scope:
                        return sum(model.IsRest[n, d] for d in model.DAYS if
                                   d >= start_of_rest_block) == last_day_in_scope - start_of_rest_block + 1
                    else:
                        return pyo.Constraint.Skip
                else:
                    return pyo.Constraint.Skip
            else:
                return pyo.Constraint.Skip

        # Constraint 9: MaxNrWeekend
        # A weekend is defined as being worked if there is a shift on the Saturday or the Sunday.
        def has_weekend_work_lb(model, n, w):
            if len(model.WEEKS) > 0:
                nurse = self.get_nurse(n)
                nd_weekend_work = [nd for nd in nurse.NurseDay if
                                   nd.Day.WeekID == w and nd.Day.IsWeekend and not nd.IsInsideOptScope and nd.AssignedShift != []]
                if len(nd_weekend_work) > 0:
                    return model.HasWeekendWork[n, w] >= 1
                else:
                    return pyo.Constraint.Skip
            else:
                return pyo.Constraint.Skip

        def has_weekend_work(model, n, d):
            if len(model.WEEKS) > 0:
                day = self.get_day(d)
                if day.IsWeekend:
                    w = day.WeekID
                    return model.HasWeekendWork[n, w] >= 1 - model.IsRest[n, d]
                else:
                    return pyo.Constraint.Skip
            else:
                return pyo.Constraint.Skip

        def max_nr_weekend(model, n):
            if len(model.WEEKS) > 0:
                nurse = self.get_nurse(n)
                max_weekends = nurse.MaxWeekends
                nr_week = max(day.WeekID for day in self.global_object.Day)
                week_inscope = list(
                    set([optscope_day.Day.WeekID for optscope_day in self.OptScopeDay if optscope_day.Day.IsWeekend]))
                week_outscope = [i for i in range(nr_week + 1) if not i in week_inscope]
                weekend_work_outscope = 0
                for i in week_outscope:
                    week_i_has_weekend_work = len([nd for nd in nurse.NurseDay if
                                                   nd.Day.WeekID == i and nd.Day.IsWeekend and nd.AssignedShift != []]) > 0
                    if week_i_has_weekend_work == True:
                        weekend_work_outscope = weekend_work_outscope + 1
                return sum(model.HasWeekendWork[n, w] for w in model.WEEKS) <= max_weekends - weekend_work_outscope
            else:
                return pyo.Constraint.Skip

        # Constraint 10: DaysOff
        # Shifts must not be assigned to the specified employee on the specified days. They are defined in the section SECTION_DAYS_OFF
        def days_off(model, n, d):
            nurseday = self.get_nurseday(n, d)
            if nurseday.IsDayOff:
                return model.IsRest[n, d] == 1
            else:
                return pyo.Constraint.Skip

        # Constraint 11: ShiftOnRequest
        # If the specified shift is not assigned to the specified employee on the specified day then the solution's penalty is the
        # specified weight value. Defined in SECTION_SHIFT_ON_REQUESTS.
        def shift_on_request(model, s, n, d):
            nursedayshifttype = self.get_nursedayshifttype(s, n, d)
            if len(nursedayshifttype) > 0:
                nursedayshifttype_instance = nursedayshifttype[0]
                return model.PenaltyShiftOnReq[s, n, d] == nursedayshifttype_instance.OnRequestWeight * (
                            1 - model.IsAssign[s, n, d])
            else:
                return pyo.Constraint.Skip

        # Constraint 12: ShiftOffRequest
        # If the specified shift is assigned to the specified employee on the specified day then the solution's penalty is the
        # weight value. Defined in SECTION_SHIFT_OFF_REQUESTS.
        def shift_off_request(model, s, n, d):
            nursedayshifttype = self.get_nursedayshifttype(s, n, d)
            if len(nursedayshifttype) > 0:
                nursedayshifttype_instance = nursedayshifttype[0]
                return model.PenaltyShiftOffReq[s, n, d] == nursedayshifttype_instance.OffRequestWeight * \
                    model.IsAssign[s, n, d]
            else:
                return pyo.Constraint.Skip

        # Constraint 13: UnderCover
        # If the number assigned shifts is below the required number on certain day
        def under_cover(model, s, d):
            day_shifttype = self.get_dayshifttype(s, d)
            shift_planned_outscope = self.get_shift_planned_outscope(s, d)
            return sum(model.IsAssign[s, n, d] for n in model.NURSES) + model.UnderCover[
                s, d] + shift_planned_outscope >= day_shifttype.NrRequired

        def penalty_under_cover(model, s, d):
            day_shifttype = self.get_dayshifttype(s, d)
            return model.PenaltyUnder[s, d] == day_shifttype.UnderCoverWeight * model.UnderCover[s, d]

        # Constraint 14: OverCover
        # If the number assigned shifts is above the required number on certain day
        def over_cover(model, s, d):
            day_shifttype = self.get_dayshifttype(s, d)
            shift_planned_outscope = self.get_shift_planned_outscope(s, d)
            return sum(model.IsAssign[s, n, d] for n in model.NURSES) - model.OverCover[
                s, d] + shift_planned_outscope <= day_shifttype.NrRequired

        def penalty_over_cover(model, s, d):
            day_shifttype = self.get_dayshifttype(s, d)
            return model.PenaltyOver[s, d] == day_shifttype.OverCoverWeight * model.OverCover[s, d]

        # Objective function
        def objective_function(model):
            return 10e6 * sum(model.MinTotalMinsUnder[n] for n in model.NURSES) \
                + sum(
                    sum(sum(model.PenaltyShiftOnReq[s, n, d] for s in model.SHIFTTYPES) for n in model.NURSES) for d in
                    model.DAYS) \
                + sum(
                    sum(sum(model.PenaltyShiftOffReq[s, n, d] for s in model.SHIFTTYPES) for n in model.NURSES) for d in
                    model.DAYS) \
                + sum(sum(model.PenaltyUnder[s, d] for s in model.SHIFTTYPES) for d in model.DAYS) \
                + sum(sum(model.PenaltyOver[s, d] for s in model.SHIFTTYPES) for d in model.DAYS)

        # Sets declaration
        employee_ids = [optscope_nurse.Nurse.EmployeeID for optscope_nurse in self.OptScopeNurse]
        day_ids = [optscope_day.Day.DayID for optscope_day in self.OptScopeDay]
        weekend_ids = list(
            set([optscope_day.Day.WeekID for optscope_day in self.OptScopeDay if optscope_day.Day.IsWeekend]))
        shifttype_ids = [optscope_shifttype.ShiftType.ShiftID for optscope_shifttype in self.OptScopeShiftType]

        model.NURSES = pyo.Set(initialize=employee_ids)
        model.DAYS = pyo.Set(initialize=day_ids)
        model.WEEKS = pyo.Set(initialize=weekend_ids)
        model.SHIFTTYPES = pyo.Set(initialize=shifttype_ids)

        # Variables declaration
        model.IsAssign = pyo.Var(model.SHIFTTYPES, model.NURSES, model.DAYS, domain=pyo.Binary, initialize=0.0)
        model.IsRest = pyo.Var(model.NURSES, model.DAYS, domain=pyo.Binary)
        model.IsEndOfWorkBlock = pyo.Var(model.NURSES, model.DAYS, domain=pyo.Binary)
        model.IsEndOfRestBlock = pyo.Var(model.NURSES, model.DAYS, domain=pyo.Binary)
        model.HasWeekendWork = pyo.Var(model.NURSES, model.WEEKS, domain=pyo.Binary)
        model.PenaltyShiftOnReq = pyo.Var(model.SHIFTTYPES, model.NURSES, model.DAYS, domain=pyo.NonNegativeReals)
        model.PenaltyShiftOffReq = pyo.Var(model.SHIFTTYPES, model.NURSES, model.DAYS, domain=pyo.NonNegativeReals)
        model.UnderCover = pyo.Var(model.SHIFTTYPES, model.DAYS, domain=pyo.NonNegativeReals)
        model.OverCover = pyo.Var(model.SHIFTTYPES, model.DAYS, domain=pyo.NonNegativeReals)
        model.PenaltyUnder = pyo.Var(model.SHIFTTYPES, model.DAYS, domain=pyo.NonNegativeReals)
        model.PenaltyOver = pyo.Var(model.SHIFTTYPES, model.DAYS, domain=pyo.NonNegativeReals)
        model.MinTotalMinsUnder = pyo.Var(model.NURSES, domain=pyo.NonNegativeReals)

        # Constraints declaration
        # Hard constraints
        model.constraint_one_shift_one_day = pyo.Constraint(model.NURSES, model.DAYS, rule=one_shift_one_day)
        model.constraint_shift_rotation_ub = pyo.Constraint(model.SHIFTTYPES, model.NURSES, model.DAYS,
                                                            rule=shift_rotation_ub)
        model.constraint_shift_rotation = pyo.Constraint(model.SHIFTTYPES, model.NURSES, model.DAYS,
                                                         rule=shift_rotation)
        model.constraint_max_nr_shifts = pyo.Constraint(model.NURSES, model.SHIFTTYPES, rule=max_nr_shifts)
        model.constraint_max_total_minutes = pyo.Constraint(model.NURSES, rule=max_total_minutes)
        model.constraint_min_total_minutes = pyo.Constraint(model.NURSES, rule=min_total_minutes)
        model.constraint_max_cons_shifts_backward = pyo.Constraint(model.NURSES, model.DAYS,
                                                                   rule=max_cons_shifts_backward)
        model.constraint_max_cons_shifts_forward = pyo.Constraint(model.NURSES, model.DAYS,
                                                                  rule=max_cons_shifts_forward)
        model.constraint_max_cons_shifts_in_between = pyo.Constraint(model.NURSES, rule=max_cons_shifts_in_between)
        model.constraint_is_end_of_work_block = pyo.Constraint(model.NURSES, model.DAYS, rule=is_end_of_work_block)
        model.constraint_min_cons_shift_inscope = pyo.Constraint(model.NURSES, model.DAYS, rule=min_cons_shift_inscope)
        model.constraint_min_cons_shift_backward = pyo.Constraint(model.NURSES, rule=min_cons_shift_backward)
        model.constraint_min_cons_shift_forward = pyo.Constraint(model.NURSES, rule=min_cons_shift_forward)
        model.constraint_is_end_of_rest_block = pyo.Constraint(model.NURSES, model.DAYS, rule=is_end_of_rest_block)
        model.constraint_min_cons_days_off_inscope = pyo.Constraint(model.NURSES, model.DAYS,
                                                                    rule=min_cons_days_off_inscope)
        model.constraint_min_cons_days_off_backward = pyo.Constraint(model.NURSES, rule=min_cons_days_off_backward)
        model.constraint_min_cons_days_off_forward = pyo.Constraint(model.NURSES, rule=min_cons_days_off_forward)
        model.constraint_has_weekend_work_lb = pyo.Constraint(model.NURSES, model.WEEKS, rule=has_weekend_work_lb)
        model.constraint_has_weekend_work = pyo.Constraint(model.NURSES, model.DAYS, rule=has_weekend_work)
        model.constraint_max_nr_weekend = pyo.Constraint(model.NURSES, rule=max_nr_weekend)
        model.constraint_days_off = pyo.Constraint(model.NURSES, model.DAYS, rule=days_off)
        # Soft constraints
        model.constraint_shift_on_request = pyo.Constraint(model.SHIFTTYPES, model.NURSES, model.DAYS,
                                                           rule=shift_on_request)
        model.constraint_shift_off_request = pyo.Constraint(model.SHIFTTYPES, model.NURSES, model.DAYS,
                                                            rule=shift_off_request)
        model.constraint_under_cover = pyo.Constraint(model.SHIFTTYPES, model.DAYS, rule=under_cover)
        model.constraint_penalty_under_cover = pyo.Constraint(model.SHIFTTYPES, model.DAYS, rule=penalty_under_cover)
        model.constraint_over_cover = pyo.Constraint(model.SHIFTTYPES, model.DAYS, rule=over_cover)
        model.constraint_penalty_over_cover = pyo.Constraint(model.SHIFTTYPES, model.DAYS, rule=penalty_over_cover)

        # Objective declaration
        model.objective = pyo.Objective(sense=pyo.minimize, rule=objective_function)

        initialization_end = time.time()
        print("init duration in seconds", (initialization_end - initialization_start))

        return model

    import os
    from io import StringIO

    import tempfile

    def solve_mip(self, model, is_debug, filename):
        solve_start = time.time()
        # Create instance
        print('create instance')
        instance = model.create_instance()
        # print(instance)
        # print(model.values())
        # Execute solver
        print('execute solver start')
        solver_path = settings.SOLVER_BINARY
        opt = pyo.SolverFactory('cplex')
        opt.set_executable(settings.SOLVER_BINARY, validate=False)

        print("Solver available:", opt.available())
        print("Solver executable:", opt.executable())
        print(f"Solver Path: {solver_path}")
        print(f"Solver Exists: {os.path.exists(solver_path)}")
        print('execute solver end')
        results = []
        debug_dir = os.path.join(os.getcwd(), 'debug_output')
        os.makedirs(debug_dir, exist_ok=True)

        if is_debug:
            lp_path = os.path.join(debug_dir, f'lp_{filename}.lp')
            log_path = os.path.join(debug_dir, f'cplexlog_{filename}.txt')

            instance.write(filename=lp_path,
                           io_options={"symbolic_solver_labels": True})
            results = opt.solve(instance, logfile=log_path)
        else:
            results = opt.solve(instance)
        solve_end = time.time()
        print("solve duration in seconds", (solve_end - solve_start))
        self.DurationSolveInSeconds = solve_end - solve_start

        return instance, results

    def handle_result(self, model, instance, results, is_debug, filename, allow_rollback):
        handle_result_start = time.time()
        if (results.solver.status == SolverStatus.ok) and (
                results.solver.termination_condition == TerminationCondition.optimal):
            kpi_hard_before = self.global_object.TotalKPIHard
            kpi_soft_before = self.global_object.TotalKPISoft
            # Manually load the solution into the model
            handle_result_1_start = time.time()
            model.solutions.load_from(results)
            if is_debug:
                instance.display(filename='sol_' + filename + '.sol')
            handle_result_1_end = time.time()
            print("handle result 1 duration in seconds", (handle_result_1_end - handle_result_1_start))  # jwo1

            handle_result_2_start = time.time()
            self.unassign_shifts()
            handle_result_2_end = time.time()
            print("handle result 2 duration in seconds", (handle_result_2_end - handle_result_2_start))  # jwo1

            handle_result_3_start = time.time()
            sorted_nurses = sorted(instance.NURSES, key=lambda x: x, reverse=False)
            sorted_days = sorted(instance.DAYS, key=lambda x: x, reverse=False)
            handle_result_3_end = time.time()
            print("handle result 3 duration in seconds", (handle_result_3_end - handle_result_3_start))  # jwo1

            handle_result_4_start = time.time()
            for n in sorted_nurses:
                optscope_nurse = [optscope_n for optscope_n in self.OptScopeNurse if optscope_n.Nurse.EmployeeID == n][
                    0]
                for d in sorted_days:
                    optscope_nurseday = [optscope_nd for optscope_nd in optscope_nurse.OptScopeNurseDay if
                                         optscope_nd.OptScopeDay.Day.DayID == d][0]
                    for s in instance.SHIFTTYPES:
                        if pyo.value(instance.IsAssign[s, n, d]) > 0.5:
                            # Store solution in OptScope objects
                            optscope_shifttype = \
                            [optscope_s for optscope_s in self.OptScopeShiftType if optscope_s.ShiftType.ShiftID == s][
                                0]
                            optscope_nurseday.AssignedShift = optscope_shifttype
                            #print(n, d, s)
                            break
            handle_result_4_end = time.time()
            print("handle result 4 duration in seconds", (handle_result_4_end - handle_result_4_start))  # jwo1

            # Do the planning
            handle_result_5_start = time.time()
            self.plan_optimizer_solution()
            handle_result_5_end = time.time()
            print("handle result 5 duration in seconds", (handle_result_5_end - handle_result_5_start))
            handle_result_6_start = time.time()
            sorted_nurses = sorted(self.global_object.Nurse, key=lambda x: x.EmployeeID, reverse=False)
            sorted_days = sorted(self.global_object.Day, key=lambda x: x.DayID, reverse=False)
            for n in sorted_nurses:
                for d in self.global_object.Day:
                    nurseday = [nd for nd in n.NurseDay if nd.Day == d][0]
                    assigned_shifttype = nurseday.AssignedShift
                    assigned_shifttype_id = ''
                    if assigned_shifttype != []:
                        assigned_shifttype_id = assigned_shifttype.ShiftID
                    print(n.EmployeeID, d.DayID, assigned_shifttype_id, end='')
                    # print(assigned_shifttype_id, end='')
                    if d != sorted_days[-1]:
                        print('\t', end='')
                print('\n', end='')
            handle_result_6_end = time.time()  # jwo1
            print("handle result 6 duration in seconds", (handle_result_6_end - handle_result_6_start))  # jwo1

            # Print KPI
            print('=====')
            handle_result_7_start = time.time()  # jwo1
            print(self.global_object.calc_TotalKPIHard(True))
            print(self.global_object.calc_TotalKPISoft(True))
            handle_result_7_end = time.time()  # jwo1
            print("handle result 7 duration in seconds", (handle_result_7_end - handle_result_7_start))  # jwo1
            self.TotalKPIHard = self.global_object.TotalKPIHard
            self.TotalKPISoft = self.global_object.TotalKPISoft
            self.IsFeasible = True

            # Decide rollback
            handle_result_8_start = time.time()  # jwo1
            if allow_rollback:
                list_delta = [self.TotalKPIHard - kpi_hard_before, self.TotalKPISoft - kpi_soft_before]
                for i in list_delta:
                    if i > 0:
                        # Rollback (plan best solution), then break
                        self.IsRollback = True
                        self.rollback()
                        break
                    elif i < 0:
                        # Accept (update best solution), then break
                        self.IsRollback = False
                        self.update_best_solution()
                        break
                    elif i == 0:
                        # Continue checking the next KPI hierarchy
                        continue

            handle_result_8_end = time.time()  # jwo1
            print("handle result 8 duration in seconds", (handle_result_8_end - handle_result_8_start))  # jwo1
        else:
            print('Solve failed.')
            self.IsFeasible = False
            self.TotalKPIHard = float('inf')
            self.TotalKPISoft = float('inf')

        handle_result_end = time.time()
        self.TimeElapsedInSeconds = handle_result_end - self.Optimizer.StartDT
        print("handle result duration in seconds", (handle_result_end - handle_result_start))

    def rollback(self):
        for optscope_n in self.OptScopeNurse:
            for optscope_nd in optscope_n.OptScopeNurseDay:
                nd = optscope_nd.NurseDay
                nd.assign_shift(nd.BestSolution_AssignedShift)

    def update_best_solution(self):
        for optscope_n in self.OptScopeNurse:
            for optscope_nd in optscope_n.OptScopeNurseDay:
                nd = optscope_nd.NurseDay
                nd.BestSolution_AssignedShift = nd.AssignedShift