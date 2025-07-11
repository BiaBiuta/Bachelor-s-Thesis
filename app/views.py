from django.shortcuts import render
from . models import *
from datetime import datetime, timedelta
import random as rnd
from django.http import request
from django.shortcuts import render, redirect
import prettytable
import os
# import cplex
# print(cplex.__version__)

# Adăugați manual CPLEX în PATH
os.environ["PATH"] += r";C:\Program Files\IBM\ILOG\CPLEX_Studio2212\cplex\bin\x64_win64"

# Debug: verificați variabila PATH
print("PATH:", os.environ["PATH"])
import sys
print("Python exec:", sys.executable)

from django.core.mail import send_mail
from django.conf import settings
from django.contrib.auth.decorators import login_required
from .render import Render
from django.views.generic import View
        # Get the current date
today = datetime.now()
# Calculate the date of Monday and Friday of the current week
monday = today - timedelta(days=today.weekday())
friday = monday + timedelta(days=4)
# Get the current year
current_year = today.year
# Format the dates
monday_formatted = monday.strftime('%Y-%m-%d')
friday_formatted = friday.strftime('%Y-%m-%d')


def index(request):
    # Fetch distinct programmes, semesters, and years of study from TimeTableMain model
    programmes = TimeTableMain.objects.values_list('Programme', flat=True).distinct()
    semesters = TimeTableMain.objects.values_list('Semister', flat=True).distinct()
    years_of_study = TimeTableMain.objects.values_list('YearOfStudy', flat=True).distinct()

    # Fetch selected Programme and its Department when a POST request is made
    if request.method == 'POST':
        programme = request.POST.get('programme')
        semester = request.POST.get('semester')
        year_of_study = request.POST.get('year_of_study')

        # Fetch the selected Programme and its Department from TimeTableMain model
        timetable_main_entry = TimeTableMain.objects.filter(Programme=programme).first()
        if timetable_main_entry:
            selected_programme = timetable_main_entry.Programme
            department = timetable_main_entry.Department
        else:
            selected_programme = None
            department = None

        # Fetch timetable entries for the selected programme, semester, and year of study
        timetable_entries = TimeTable.objects.filter(Programme__Programme=programme,
                                                     Programme__Semister=semester,
                                                     Programme__YearOfStudy=year_of_study)

        # Extract unique days from the fetched timetable entries
        days = set(entry.Day for entry in timetable_entries)

        timetable_data = {day: [] for day in days}

        for entry in timetable_entries:
            timetable_data[entry.Day].append(entry)


        # Initial rendering of the page without POST data


        context = {
            'programmes': programmes,
            'semesters': semesters,
            'years_of_study': years_of_study,
            'timetable_data': timetable_data,
            'selected_programme': selected_programme,
            'department': department,
            'monday': monday_formatted,
            'friday': friday_formatted,
            'current_year': current_year,
        }
        return render(request, 'pages/index.html', context)


    context = {
        'programmes': programmes,
        'semesters': semesters,
        'years_of_study': years_of_study,
        'selected_programme': None,
        'department': None,
        'monday': monday_formatted,
        'friday': friday_formatted,
        'current_year': current_year,
    }

    return render(request, 'pages/index.html', context)



def support( request):
    return render(request, 'pages/calendar.html')
POPULATION_SIZE = 9
NUMB_OF_ELITE_SCHEDULES = 1
TOURNAMENT_SELECTION_SIZE = 3
MUTATION_RATE = 0.1
class Data:
    MEETING_TIMES = [["MT1", "MWF 09:00 = 10:00"],
                     ["MT2", "MWF 10:00 = 11:00"],
                     ["MT3", "TTH 09:00 = 10:30"],
                     ["MT4", "TTH 10:30 = 12:00"]]
    def __init__(self):
        self._rooms = Venue.objects.all()
        self._meetingTimes = [];
        self._instructors = Instructor.objects.all()
        self._courses = CourseName.objects.all()
        self._depts = Department.objects.all()
        for i in range(0, len(self.MEETING_TIMES)):
            self._meetingTimes.append(MeetingTime(self.MEETING_TIMES[i][0], self.MEETING_TIMES[i][1]))

    def get_rooms(self): return self._rooms

    def get_instructors(self): return self._instructors

    def get_courses(self): return self._courses

    def get_depts(self): return self._depts

    def get_meetingTimes(self): return self._meetingTimes


class GeneticAlgorithm:
    def evolve(self, population):
        return self._mutate_population(self._crossover_population(population))

    def _crossover_population(self, pop):
        crossover_pop=Population(0)
        for i in range (NUMB_OF_ELITE_SCHEDULES):
            crossover_pop.get_schedules().append(pop.get_schedules()[i])
        i=NUMB_OF_ELITE_SCHEDULES
        while i<POPULATION_SIZE:
            schedule1=self._select_tournament_population(pop).get_schedules()[0]
            schedule2=self._select_tournament_population(pop).get_schedules()[0]
            crossover_pop.get_schedules().append(self._crossover_schedule(schedule1,schedule2))
            i+=1


        return crossover_pop

    def _mutate_population(self, population):
        for  i in range (NUMB_OF_ELITE_SCHEDULES,POPULATION_SIZE):
            self._mutate_schedule(population.get_schedules()[i])
        return  population

    def _crossover_schedule(self, schedule1, schedule2):
        crossoverSchedule = Schedule().initialize()
        for i in range(0, len(crossoverSchedule.get_classes())):
            if (rnd.random() > 0.5):
                crossoverSchedule.get_classes()[i] = schedule1.get_classes()[i]
            else:
                crossoverSchedule.get_classes()[i] = schedule2.get_classes()[i]
        return crossoverSchedule

    def _mutate_schedule(self, mutateSchedule):
        schedule = Schedule().initialize()
        for i in range(0, len(mutateSchedule.get_classes())):
            if (MUTATION_RATE > rnd.random()): mutateSchedule.get_classes()[i] = schedule.get_classes()[i]
        return mutateSchedule

    def _select_tournament_population(self, pop):
        tournament_pop = Population(0)
        i=0
        while i < TOURNAMENT_SELECTION_SIZE:
            tournament_pop.get_schedules().append(pop.get_schedules()[rnd.randrange(0, POPULATION_SIZE)])
            i += 1
        tournament_pop.get_schedules().sort(key=lambda x: x.get_fitness(), reverse=True)
        return tournament_pop




class Schedule:
    def __init__(self):
        self._data = data
        self._classes = []
        self._numbOfConflicts = 0
        self._fitness = -1
        self._classNumb = 0
        self._isFitnessChanged = True

    def get_classes(self):
        self._isFitnessChanged = True
        return self._classes

    def get_numberOfConflicts(self):
        return self._numbOfConflicts

    def get_fitness(self):
        if self._isFitnessChanged:
            self._fitness = self.calculate_fitness()
            self._isFitnessChanged = False
        return self._fitness

    def initialize(self):
        depts = self._data.get_depts()
        for i in range(0, len(depts)):
            courses = depts[i].Courses.all()
            for j in range(0, len(courses)):
                newClass = Class(self._classNumb, depts[i], courses[j])
                self._classNumb += 1
                newClass.set_meetingTime(data.get_meetingTimes()[rnd.randrange(0, len(data.get_meetingTimes()))])
                newClass.set_room(data.get_rooms()[rnd.randrange(0, len(data.get_rooms()))])
                newClass.set_instructor(courses[j].Instructors.all()[rnd.randrange(0, len(courses[j].Instructors.all()))])
                self._classes.append(newClass)
        return self

    def calculate_fitness(self):
        self._numbOfConflicts = 0
        classes = self.get_classes()
        for i in range(0, len(classes)):
            if classes[i].get_room().SeatingCapacity < int(classes[i].get_course().Max_numb_students):
                self._numbOfConflicts += 1
            for j in range(0, len(classes)):
                if j >= 1:
                    if (classes[i].get_meetingTime() == classes[j].get_meetingTime() and classes[i].get_id() !=
                            classes[j].get_id()):
                        if classes[i].get_room() == classes[j].get_room(): self._numbOfConflicts += 1
                        if classes[i].get_instructor() == classes[j].get_instructor(): self._numbOfConflicts += 1
        #print(f"Conflicte în această generație: {self._numbOfConflicts}")
        return 1/(1.0 * self._numbOfConflicts + 1)
    def __str__(self):
        retrnValue=""
        for i in range(0, len(self._classes)-1):
            retrnValue +=str(self._classes[i])+", "
        retrnValue+=str(self._classes[len(self._classes)-1])
        return retrnValue

class Population:
    def __init__(self,size):
        self.size = size
        self._data=data
        self._schedules = []
        for i in range(0,size):self._schedules.append(Schedule().initialize())
    def get_schedules(self):return self._schedules




class Class:
    def __init__(self, id, dept, course):
        self._id = id
        self._dept = dept
        self._course = course
        self._instructor = None
        self._meetingTime = None
        self._room = None

    def get_id(self): return self._id

    def get_dept(self): return self._dept

    def get_course(self): return self._course

    def get_instructor(self): return self._instructor

    def get_meetingTime(self): return self._meetingTime

    def get_room(self): return self._room

    def set_instructor(self, instructor):  self._instructor = instructor

    def set_meetingTime(self, meetingTime): self._meetingTime = meetingTime

    def set_room(self, room): self._room = room

    def __str__(self):
        return str(self._dept.get_name()) + "," + str(self._course.get_number()) + "," + \
            str(self._room.get_number()) + "," + str(self._instructor.get_id()) + "," + str(self._meetingTime.get_id())


data = Data()
print(data.get_meetingTimes())
print(data.get_rooms())
print(data.get_courses())
print(data.get_depts())


def context_manager(schedule):
    classes = schedule.get_classes()
    context = []
    cls = {}
    for i in range(len(classes)):
        cls["section"] = classes[i].section_id
        cls['dept'] = classes[i].department.dept_name
        cls['course'] = f'{classes[i].course.course_name} ({classes[i].course.course_number}, ' \
                        f'{classes[i].course.max_numb_students}'
        cls['room'] = f'{classes[i].room.r_number} ({classes[i].room.seating_capacity})'
        cls['instructor'] = f'{classes[i].instructor.name} ({classes[i].instructor.uid})'
        cls['meeting_time'] = [classes[i].meeting_time.pid, classes[i].meeting_time.day, classes[i].meeting_time.time]
        context.append(cls)
    return context


# def timetable(request):
#     schedule = []
#     population = Population(POPULATION_SIZE)
#     generation_num = 0
#     population.get_schedules().sort(key=lambda x: x.get_fitness(), reverse=True)
#     geneticAlgorithm = GeneticAlgorithm()
#     while population.get_schedules()[0].get_fitness() != 1.0:
#         generation_num += 1
#         print('\n> Generation #' + str(generation_num))
#         population = geneticAlgorithm.evolve(population)
#         population.get_schedules().sort(key=lambda x: x.get_fitness(), reverse=True)
#         schedule = population.get_schedules()[0].get_classes()
#
#     return render(request, 'pages/gentimetable.html', {'schedule': schedule, 'sections': Section.objects.all(),
#                                               'times': MeetingTime.objects.all()})
def timetable(request):

    schedule = []
    population = Population(POPULATION_SIZE)
    generation_num = 0
    population.get_schedules().sort(key=lambda x: x.get_fitness(), reverse=True)
    geneticAlgorithm = GeneticAlgorithm()
    print(population.get_schedules()[0].get_fitness())
    while population.get_schedules()[0].get_fitness() != 1.0:
        generation_num += 1
        print('\n> Generation #' + str(generation_num))
        population = geneticAlgorithm.evolve(population)
        population.get_schedules().sort(key=lambda x: x.get_fitness(), reverse=True)
        schedule = population.get_schedules()[0].get_classes()

    best_schedule = population.get_schedules()[0]
    schedule = best_schedule.get_classes()

    # Crearea unui tabel PrettyTable
    table = prettytable.PrettyTable(
        ['Class #', 'Department', 'Course (Number, Max Students)', 'Room (Capacity)', 'Instructor', 'Meeting Time']
    )

    for i, cls in enumerate(schedule):
        table.add_row([
            i,
            cls.get_dept().DepartmentName,
            f"{cls.get_course().Course} ({cls.get_course().CourseCode}, {cls.get_course().Max_numb_students})",
            f"{cls.get_room().Venue} ({cls.get_room().SeatingCapacity})",
            f"{cls.get_instructor().FirstName} ({cls.get_instructor().MiddleName})",
            f"{cls.get_meetingTime().day} {cls.get_meetingTime().time}"
        ])

    # Printează tabelul în consolă
    print(table)

    # Transmite datele către template pentru afișare în HTML
    # return render(request, 'pages/gentimetable.html', {
    #     'schedule': schedule,
    #     'sections': Section.objects.all(),
    #     'times': MeetingTime.objects.all(),
    # })
# class DisplayMgr:
#     def print_available_data(self):
#         print("Available")
#         self.print_dept()
#         self.print_course()
#         self.print_room()
#         self.print_instructor()
#         self.print_meeting_times()
#     def print_dept(self):
#         depts = data.get_depts()
#
#         availableDeptsTable = prettytable.PrettyTable(['dept', 'courses'])
#         for i in range(0, len(depts)):
#             courses = depts.__getitem__(i).get_courses()
#             tempStr = "["
#             for j in range(0, len(courses) - 1):
#                 tempStr += courses[j].__str__() + ", "
#             tempStr += courses[len(courses) - 1].__str__() + "]"
#             availableDeptsTable.add_row([depts.__getitem__(i).get_name(), tempStr])
#         print(availableDeptsTable)
#     def print_course(self):
#         availableCoursesTable = prettytable.PrettyTable(['Id', 'course #', 'max # of students', 'instructors' ])
#         courses = data.get_courses()
#         for i in range(0, len(courses)):
#             instructors = courses[i].get_instructors()
#             tempStr = ""
#             for j in range(0, len(instructors) - 1):
#                 tempStr += instructors[j].__str__() + ","
#             tempStr+= instructors[len(instructors) - 1] .__str__()
#             availableCoursesTable.add_row(
#             [   courses[i].get_number(), courses[i].get_name(), str(courses[i].get_maxNumbOfStudents()), tempStr])
#         print(availableCoursesTable)
#     def print_instructor(self):
#         availableInstructorsTable = prettytable.PrettyTable(['id', 'Instructor'])
#
#         instructors = data.get_instructors()
#         for i in range(0, len(instructors)):
#             availableInstructorsTable.add_row([instructors[i].get_id(), instructors[i].get_name()])
#         print(availableInstructorsTable)
#
#     def print_room(self):
#         availableRoomsTable = prettytable.PrettyTable(['room #', 'max seating capacity'])
#
#         rooms = data.get_rooms()
#         for i in range(0, len(rooms)):
#             availableRoomsTable.add_row([str(rooms[i].get_number()), str(rooms[i].get_seatingCapacity())])
#         print(availableRoomsTable)
#
#     def print_meeting_times(self):
#         availableMeetingTimeTable = prettytable.PrettyTable(['id', 'Meeting Time'])
#         meetingTimes = data.get_meetingTimes()
#         for i in range(0, len(meetingTimes)):
#             availableMeetingTimeTable.add_row([meetingTimes[i].get_id(), meetingTimes[i].get_time()])
#         print(availableMeetingTimeTable)
#
#     def print_generation(self, population):
#         table1 = prettytable.PrettyTable(
#             ['Schedule #', 'Fitness', '# of Conflicts', 'Classes [Dept, Class, Room, Instructor]'])
#         schedules = population.get_schedules()
#
#         for i in range(len(schedules)):
#             table1.add_row([
#                 str(i),
#                 round(schedules[i].get_fitness(), 3),
#                 schedules[i].get_numbOfConflicts(),
#                 str(schedules[i])  # Afișăm programul ca string, trebuie ca `__str__()` să fie definit în `Schedule`
#             ])
#
#         print(table1)
#
#     def print_schedule_as_table(self, schedule):
#         classes = schedule.get_classes()
#
#         table = prettytable.PrettyTable(
#             ['Class #', 'Dept', 'Course (Number, Max # of Students)', 'Room (Capacity)', 'Instructor', 'Meeting Time'])
#
#         for i in range(len(classes)):
#             table.add_row([
#                 str(i),
#                 classes[i].get_dept().get_name(),
#                 f"{classes[i].get_course().get_name()} ({classes[i].get_course().get_number()}, {classes[i].get_course().get_maxNumbOfStudents()})",
#                 f"{classes[i].get_room().get_number()} ({classes[i].get_room().get_seatingCapacity()})",
#                 f"{classes[i].get_instructor().get_name()} ({classes[i].get_instructor().get_id()})",
#                 f"{classes[i].get_meetingTime().get_time()} ({classes[i].get_meetingTime().get_id()})"
#             ])
#
#         print(table)
# def timetable(request):
#     print("am intrat in timetable")
#     displayMgr = DisplayMgr()
#     displayMgr.print_available_data()
#     schedule = []
#     population = Population(POPULATION_SIZE)
#     generation_num = 0
#     population.get_schedules().sort(key=lambda x: x.get_fitness(), reverse=True)
#     displayMgr.print_generation(population)
#     displayMgr.print_schedule_as_table(population.get_schedules()[0])
#     geneticAlgorithm = GeneticAlgorithm()
#
#     # Generăm soluția optimă
#     while population.get_schedules()[0].get_fitness() != 1.0:
#         generation_num += 1
#         print('\n> Generation #' + str(generation_num))
#         population = geneticAlgorithm.evolve(population)
#         population.get_schedules().sort(key=lambda x: x.get_fitness(), reverse=True)
#         schedule = population.get_schedules()[0].get_classes()
#         displayMgr.print_generation(population)
#         displayMgr.print_schedule_as_table(population.get_schedules()[0])
#     # Salvăm orarul în baza de date
#     TimeTable.objects.all().delete()  # Ștergem datele existente pentru a evita duplicările
#     for cls in schedule:
#         TimeTable.objects.create(
#             Programme=cls.get_course().programme,  # Se presupune că fiecare curs are un atribut "programme"
#             Semister=cls.get_course().semester,  # Se presupune că fiecare curs are un atribut "semester"
#             YearOfStudy=cls.get_course().year,  # Se presupune că fiecare curs are un atribut "year"
#             Day=cls.get_meetingTime().day,
#             Timestart=cls.get_meetingTime().time.split('-')[0],  # Presupunem că ora este în formatul "start-end"
#             TimeEnd=cls.get_meetingTime().time.split('-')[1],
#             Venue=cls.get_room().r_number,
#             Instructor=cls.get_instructor().name,
#             CourseName=cls.get_course(),
#             SessionType="Lecture",  # Exemplu: poate fi adaptat după nevoi
#         )
#
#     # Returnăm rezultatele pentru afișare în HTML
#     return render(request, 'pages/gentimetable.html', {
#         'schedule': schedule,
#         'sections': Section.objects.all(),
#         'times': MeetingTime.objects.all(),
#     })

import math
import datetime as dt
import os
import tempfile
import time
import random
import pyomo.environ as pyo
from pyomo.opt import SolverFactory, SolverStatus, TerminationCondition



# %%
class Optimizer:
    def __init__(self, timelimit, max_iteration, top_random_probability,
                 global_object):
        self.TimeLimit = timelimit
        self.MaxIteration = max_iteration
        self.StartDT = time.time()
        self.CurrentIteration = 1
        self.TopRandomProbability = top_random_probability
        # Relations
        self.GlobalObject = global_object
        global_object.set_relation_optimizer(self)
        self.ScopeSelection = []
        self.OptimizerIteration = []

    def set_relation_optimizer_iteration(self, optimizeriteration):
        self.OptimizerIteration.append(optimizeriteration)

    def set_relation_scope_selection(self, scopeselection):
        self.ScopeSelection.append(scopeselection)

    def get_continue(self):
        elapsed_time = dt.timedelta(seconds=time.time() - self.StartDT)
        return self.CurrentIteration <= self.MaxIteration and elapsed_time < self.TimeLimit

    def get_scope_selection(self):
        # Random for now TODO
        return random.choice([ss for ss in self.ScopeSelection])

    def plan_up_to_iteration(self, number):
        self.GlobalObject.unassign_shifts()
        optimizer_iterations = [oi for oi in self.OptimizerIteration if oi.IterationNr <= number]
        optimizer_iterations.sort(key=lambda x: x.IterationNr, reverse=False)
        for optimizer_iteration in optimizer_iterations:
            optimizer_iteration.plan_optimizer_solution()

    def remove_optimizer_iterations(self):
        for optimizer_iteration in self.OptimizerIteration:
            for optscope_nurse in optimizer_iteration.OptScopeNurse:
                for optscope_nurseshifttype in optscope_nurse.OptScopeNurseShiftType:
                    del (optscope_nurseshifttype)
                for optscope_nursedayshifttype in optscope_nurse.OptScopeNurseDayShiftType:
                    del (optscope_nursedayshifttype)
                for optscope_nurseday in optscope_nurse.OptScopeNurseDay:
                    del (optscope_nurseday)
                del (optscope_nurse)
            for optscope_day in optimizer_iteration.OptScopeDay:
                del (optscope_day)
            for optscope_shifttype in optimizer_iteration.OptScopeShiftType:
                for optscope_dayshifttype in optscope_shifttype.OptScopeDayShiftType:
                    del (optscope_dayshifttype)
                del (optscope_shifttype)
            del (optimizer_iteration)

    def calc_scope_selection_attribute(self):
        global_object.calc_TotalKPIHard(False)
        global_object.calc_TotalKPISoft(False)
        for ss in self.ScopeSelection:
            ss.calc_score()
            ss.calc_can_be_chosen()
            print("score ",ss.Score)


    def select_top_random(self, list_pool, probability_threshold, target_nr):
        selected_element = []
        for e in list_pool:
            random_number = random.random()
            if random_number <= probability_threshold:
                selected_element.append(e)
                if len(selected_element) >= target_nr:
                    break
        if len(selected_element) < target_nr:
            unselected_list_pool = [e for e in list_pool if e not in selected_element]
            selected_element.extend(random.sample(unselected_list_pool, target_nr - len(selected_element)))

        return selected_element

    def select_scope_selection(self):
        # Select with top random approach
        self.calc_scope_selection_attribute()
        sorted_scope_selections = sorted([ss for ss in self.ScopeSelection if ss.CanBeChosen == True],
                                         key=lambda x: x.Score, reverse=True)
        for ss in sorted_scope_selections:
            print('candidate', ss.Name, ss.Score)

        selected_scope_selection = self.select_top_random(sorted_scope_selections, self.TopRandomProbability, 1)[0]
        print('selected_scope_selection', selected_scope_selection.Name)

        return selected_scope_selection


# %%
class ScopeSelection:
    def __init__(self, name, maxnurse, maxday, maxshifttype,
                 optimizer):
        self.Name = name
        self.NrSelected = 0
        self.MaxNurses = maxnurse
        self.MaxDays = maxday
        self.MaxShiftTypes = maxshifttype
        self.Score = 0.0
        self.CanBeChosen = True
        # Relations
        self.Optimizer = optimizer
        optimizer.set_relation_scope_selection(self)
        self.OptimizerIteration = []

    def set_relation_optimizer_iteration(self, optimizeriteration):
        self.OptimizerIteration.append(optimizeriteration)

    def get_opt_scope(self):
        anchor = self.get_opt_scope_anchor()
        optscope_days, optscope_nurses, optscope_shifttypes = self.get_opt_neighborhood(anchor)
        return optscope_days, optscope_nurses, optscope_shifttypes

    def get_opt_scope_anchor(self):
        # print("global_object optimizer ",self.Optimizer.GlobalObject.id)
        # nurses = [n for n in Nurse.objects.filter(GlobalObject_id=self.Optimizer.GlobalObject.id)]
        # days = [d for d in Day.objects.filter(GlobalObject_id=self.Optimizer.GlobalObject.id)]
        nurses = [n for n in self.Optimizer.GlobalObject.Nurse]
        days = [d for d in self.Optimizer.GlobalObject.Day]
        nr_nurses = len(nurses)
        print("len nurses", nr_nurses)
        nr_days = len(days)
        randomnr = random.randrange(nr_nurses * nr_days)
        nurse = nurses[math.floor(randomnr / nr_days)]
        day = days[randomnr % nr_days]
        nurseday = [nd for nd in nurse.NurseDay if nd.Day == day][0]
        print('nurseday', nurseday.Nurse.EmployeeID, nurseday.Day.DayID)
        return nurseday

    def get_optscope_days(self, anchor_day):
        if anchor_day == []:
            anchor_day = random.choice([n for n in self.Optimizer.GlobalObject.Day])
        opt_scope_days = [anchor_day]
        if self.MaxDays > 1:
            days = [d for d in self.Optimizer.GlobalObject.Day]
            days_to_left = self.MaxDays // 2
            days_to_right = self.MaxDays - days_to_left
            opt_scope_days = [d for d in self.Optimizer.GlobalObject.Day if
                              int(d.DayID) >= int(anchor_day.DayID) - days_to_left and int(d.DayID) <= int(anchor_day.DayID) + days_to_right - 1]
            if len(opt_scope_days) < self.MaxDays and len(opt_scope_days) < len(days):
                diff = self.MaxDays - len(opt_scope_days)
                min_day = min([int(d.DayID) for d in opt_scope_days])
                max_day = max([int(d.DayID) for d in opt_scope_days])
                if min_day > 0:
                    # Take days to the left
                    opt_scope_days.extend(
                        [d for d in self.Optimizer.GlobalObject.Day if int(d.DayID) >= min_day - diff and int(d.DayID) < min_day])
                else:
                    # Take days to the right
                    opt_scope_days.extend(
                        [d for d in self.Optimizer.GlobalObject.Day if int(d.DayID) > max_day and int(d.DayID) <= max_day + diff])
        opt_scope_days.sort(key=lambda x: int(x.DayID), reverse=False)
        return opt_scope_days

    def get_optscope_nurses(self, opt_scope_days, anchor_nurse):
        if anchor_nurse == []:
            anchor_nurse = random.choice([n for n in self.Optimizer.GlobalObject.Nurse])
        opt_scope_nurses = [anchor_nurse]
        if self.MaxNurses > 1:
            nurses_without_anchor = sorted([n for n in self.Optimizer.GlobalObject.Nurse if n != anchor_nurse],
                                           key=lambda x: (
                                           x.get_nurseday_nrselectedinoptscope(opt_scope_days), random.random()))
            print('get_optscope_nurses')
            for n in nurses_without_anchor:
                print(' ', n.EmployeeID, n.get_nurseday_nrselectedinoptscope(opt_scope_days))
            top_random_nurses = self.Optimizer.select_top_random(nurses_without_anchor,
                                                                 self.Optimizer.TopRandomProbability,
                                                                 min(self.MaxNurses - 1, len(nurses_without_anchor)))
            opt_scope_nurses.extend(top_random_nurses)
        opt_scope_nurses.sort(key=lambda x: x.EmployeeID, reverse=False)
        return opt_scope_nurses

    def get_optscope_shifttypes(self, opt_scope_days, opt_scope_nurses, anchor_shifttype):
        opt_scope_shifttypes = []
        opt_scope_shifttypes_planned = []
        for n in opt_scope_nurses:
            for ns in n.NurseShiftType:
                if ns.MaxShifts > 0:
                    opt_scope_shifttypes.append(ns.ShiftType)
            for nd in n.NurseDay:
                if nd.Day in opt_scope_days and nd.AssignedShift != []:
                    opt_scope_shifttypes_planned.append(nd.AssignedShift)
        opt_scope_shifttypes = list(set(opt_scope_shifttypes))
        opt_scope_shifttypes_planned = list(set(opt_scope_shifttypes_planned))
        print('opt_scope_shifttypes', len(opt_scope_shifttypes), 'opt_scope_shifttypes_planned',
              len(opt_scope_shifttypes_planned))
        # opt_scope_shifttypes = random.sample(opt_scope_shifttypes, min(self.MaxShiftTypes, len(opt_scope_shifttypes)))
        opt_scope_shifttypes = sorted(opt_scope_shifttypes, key=lambda x: (x not in opt_scope_shifttypes_planned,
                                                                           x.get_nursedayshifttype_nrselectedinoptscope(
                                                                               opt_scope_nurses, opt_scope_days),
                                                                           random.random()))
        print('get_optscope_shifttypes')
        for s in opt_scope_shifttypes:
            print(' ', s.ShiftID, s not in opt_scope_shifttypes_planned,
                  s.get_nursedayshifttype_nrselectedinoptscope(opt_scope_nurses, opt_scope_days))
        opt_scope_shifttypes = self.Optimizer.select_top_random(opt_scope_shifttypes,
                                                                self.Optimizer.TopRandomProbability,
                                                                min(self.MaxShiftTypes, len(opt_scope_shifttypes)))
        # Fit in anchor_shifttype if it's not selected yet
        if anchor_shifttype != [] and not anchor_shifttype in opt_scope_shifttypes:
            random_idx = random.randrange(len(opt_scope_shifttypes))
            opt_scope_shifttypes[random_idx] = anchor_shifttype
        return opt_scope_shifttypes

    def get_opt_neighborhood(self, anchor):
        if isinstance(anchor, NurseDay):
            day = anchor.Day
            nurse = anchor.Nurse
            shifttype = []
        elif isinstance(anchor, DayShiftType):
            day = anchor.Day
            nurse = []
            shifttype = anchor.ShiftType
        elif isinstance(anchor, NurseDayShiftType):
            day = anchor.Day
            nurse = anchor.Nurse
            shifttype = anchor.ShiftType
        opt_scope_days = self.get_optscope_days(day)
        opt_scope_nurses = self.get_optscope_nurses(opt_scope_days, nurse)
        opt_scope_shifttypes = self.get_optscope_shifttypes(opt_scope_days, opt_scope_nurses, shifttype)
        return opt_scope_days, opt_scope_nurses, opt_scope_shifttypes

    def calc_score(self):
        self.Score = 0.0

    def calc_can_be_chosen(self):
        self.CanBeChosen = True


# %%
class ScopeSelectionRandom(ScopeSelection):
    pass


# %%
class ScopeSelectionMinTotalMinutes(ScopeSelection):
    def get_opt_scope_anchor(self):
        print("globalObject Nurese ",self.Optimizer.GlobalObject.Nurse)
        violating_nursedays = [n.NurseDay for n in self.Optimizer.GlobalObject.Nurse if n.KPIHardMinTotalMinutes > 0]
        violating_nursedays = sum(violating_nursedays, [])  # flatten to 1 dimensional
        all_nds = [nd.NurseDayShiftType for nd in violating_nursedays]
        all_nds = sum(all_nds, [])  # flatten to 1 dimensional
        sorted_nds = sorted(all_nds,
                            key=lambda x: (x.NrSelectedInOptScope, -x.Nurse.KPIHardMinTotalMinutes, random.random()))
        print("all_nds",sorted_nds)
        nds = self.Optimizer.select_top_random(sorted_nds, self.Optimizer.TopRandomProbability, 1)[0]

        print('anchor ScopeSelectionMinTotalMinutes', nds.Nurse.EmployeeID, nds.Day.DayID, nds.ShiftType.ShiftID)
        return nds

    def calc_score(self):
        self.Score = 1000 * global_object.KPIHardMinTotalMinutes

    def calc_can_be_chosen(self):
        self.CanBeChosen = global_object.KPIHardMinTotalMinutes > 0


# %%
class ScopeSelectionShiftOnRequest(ScopeSelection):
    def get_opt_scope_anchor(self):
        violating_nursedays = [n.NurseDay for n in self.Optimizer.GlobalObject.Nurse if n.KPISoftShiftOnRequest > 0]
        violating_nursedays = sum(violating_nursedays, [])  # flatten to 1 dimensional
        violating_nursedays = [nd for nd in violating_nursedays if nd.KPISoftShiftOnRequest > 0]
        sorted_violating_nursedays = sorted([nd for nd in violating_nursedays], key=lambda x: (
        x.NrSelectedInOptScope, -x.KPISoftShiftOnRequest, random.random()))
        nurseday = self.Optimizer.select_top_random(sorted_violating_nursedays, self.Optimizer.TopRandomProbability, 1)[
            0]
        nds = [ndshift for ndshift in nurseday.NurseDayShiftType if ndshift.IsOnRequest][0]
        print('anchor ScopeSelectionOnRequest', nds.Nurse.EmployeeID, nds.Day.DayID, nds.ShiftType.ShiftID)
        return nds

    def calc_score(self):
        self.Score = global_object.KPISoftShiftOnRequest

    def calc_can_be_chosen(self):
        self.CanBeChosen = global_object.KPISoftShiftOnRequest > 0


# %%
class ScopeSelectionShiftOffRequest(ScopeSelection):
    def get_opt_scope_anchor(self):
        violating_nursedays = [n.NurseDay for n in self.Optimizer.GlobalObject.Nurse if n.KPISoftShiftOffRequest > 0]
        violating_nursedays = sum(violating_nursedays, [])  # flatten to 1 dimensional
        violating_nursedays = [nd for nd in violating_nursedays if nd.KPISoftShiftOffRequest > 0]
        sorted_violating_nursedays = sorted([nd for nd in violating_nursedays], key=lambda x: (
        x.NrSelectedInOptScope, -x.KPISoftShiftOffRequest, random.random()))
        nurseday = self.Optimizer.select_top_random(sorted_violating_nursedays, self.Optimizer.TopRandomProbability, 1)[
            0]
        nds = [ndshift for ndshift in nurseday.NurseDayShiftType if ndshift.IsOffRequest][0]
        print('anchor ScopeSelectionOffRequest', nds.Nurse.EmployeeID, nds.Day.DayID, nds.ShiftType.ShiftID)
        return nds

    def calc_score(self):
        self.Score = global_object.KPISoftShiftOffRequest

    def calc_can_be_chosen(self):
        self.CanBeChosen = global_object.KPISoftShiftOffRequest > 0


# %%
class ScopeSelectionShiftUnderCover(ScopeSelection):
    def get_opt_scope_anchor(self):
        violating_dayshifttypes = [d.DayShiftType for d in self.Optimizer.GlobalObject.Day if d.KPISoftUnderCover > 0]
        violating_dayshifttypes = sum(violating_dayshifttypes, [])  # flatten to 1 dimensional
        violating_dayshifttypes = [ds for ds in violating_dayshifttypes if ds.KPISoftUnderCover > 0]
        sorted_violating_dayshifttypes = sorted([ds for ds in violating_dayshifttypes], key=lambda x: (
        x.NrSelectedInOptScope, -x.KPISoftUnderCover, random.random()))
        dayshifttype = \
        self.Optimizer.select_top_random(sorted_violating_dayshifttypes, self.Optimizer.TopRandomProbability, 1)[0]
        day = dayshifttype.Day
        shifttype = dayshifttype.ShiftType
        # Select nurse: whose nurseday has no plan and can plan this shift
        qualified_nurse_days = sum(
            [n.NurseDay for n in self.Optimizer.GlobalObject.Nurse if n.can_plan_shifttype(shifttype)], [])
        qualified_nurse_days = [nd for nd in qualified_nurse_days if
                                nd.Day == day and (nd.AssignedShift == [] or nd.AssignedShift != shifttype)]
        if len(qualified_nurse_days) > 0:
            sorted_qualified_nurse_days = sorted([nd for nd in qualified_nurse_days],
                                                 key=lambda x: (x.NrSelectedInOptScope, random.random()))
            nurse_day = \
            self.Optimizer.select_top_random(sorted_qualified_nurse_days, self.Optimizer.TopRandomProbability, 1)[0]
            nds = [nds for nds in nurse_day.NurseDayShiftType if nds.ShiftType == shifttype][0]
            print('anchor ScopeSelectionShiftUnderCover', nds.Nurse.EmployeeID, nds.Day.DayID, nds.ShiftType.ShiftID)
            return nds
        else:
            print('anchor dayshifttype ScopeSelectionShiftUnderCover', dayshifttype.Day.DayID,
                  dayshifttype.ShiftType.ShiftID)
            return dayshifttype

    def calc_score(self):
        self.Score = global_object.KPISoftUnderCover

    def calc_can_be_chosen(self):
        self.CanBeChosen = global_object.KPISoftUnderCover > 0


# %%
class ScopeSelectionShiftOverCover(ScopeSelection):
    def get_opt_scope_anchor(self):
        violating_dayshifttypes = [d.DayShiftType for d in self.Optimizer.GlobalObject.Day if d.KPISoftOverCover > 0]
        violating_dayshifttypes = sum(violating_dayshifttypes, [])  # flatten to 1 dimensional
        violating_dayshifttypes = [ds for ds in violating_dayshifttypes if ds.KPISoftOverCover > 0]
        sorted_violating_dayshifttypes = sorted([ds for ds in violating_dayshifttypes], key=lambda x: (
        x.NrSelectedInOptScope, -x.KPISoftOverCover, random.random()))
        dayshifttype = \
        self.Optimizer.select_top_random(sorted_violating_dayshifttypes, self.Optimizer.TopRandomProbability, 1)[0]
        day = dayshifttype.Day
        shifttype = dayshifttype.ShiftType
        # Select nurse: whose nurseday plans this shift
        qualified_nurse_days = sum(
            [n.NurseDay for n in self.Optimizer.GlobalObject.Nurse if n.can_plan_shifttype(shifttype)], [])
        qualified_nurse_days = [nd for nd in qualified_nurse_days if nd.Day == day and nd.AssignedShift == shifttype]
        if len(qualified_nurse_days) > 0:
            sorted_qualified_nurse_days = sorted([nd for nd in qualified_nurse_days],
                                                 key=lambda x: (x.NrSelectedInOptScope, random.random()))
            nurse_day = \
            self.Optimizer.select_top_random(sorted_qualified_nurse_days, self.Optimizer.TopRandomProbability, 1)[0]
            nds = [nds for nds in nurse_day.NurseDayShiftType if nds.ShiftType == shifttype][0]
            print('anchor ScopeSelectionShiftOverCover', nds.Nurse.EmployeeID, nds.Day.DayID, nds.ShiftType.ShiftID)
            return nds
        else:
            print('anchor dayshifttype ScopeSelectionShiftOverCover', dayshifttype.Day.DayID,
                  dayshifttype.ShiftType.ShiftID)
            return dayshifttype

    def calc_score(self):
        self.Score = global_object.KPISoftOverCover

    def calc_can_be_chosen(self):
        self.CanBeChosen = global_object.KPISoftOverCover > 0


# %%
class OptimizerIteration:
    def __init__(self, iterationnr, startdt,
                 optimizer, scopeselection):
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
                # Unassign the currently planned shift if that currently planned shift is part of opt scope in this iteration
                if optscope_nurseday.NurseDay.AssignedShift != [] and optscope_nurseday.NurseDay.AssignedShift.ShiftID in [
                    optscope_s.ShiftType.ShiftID for optscope_s in self.OptScopeShiftType]:
                    optscope_nurseday.NurseDay.unassign_shift()
                # Plan according to optimizer
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
            # If a nd is outside scope OR If a nd is inside scope but has shift outside scope assigned
            if (not nd.Day.IsInsideOptScope and nd.AssignedShift != []) or (
                    nd.AssignedShift != [] and not nd.AssignedShift.IsInsideOptScope):
                minutes_planned_outscope = minutes_planned_outscope + nd.AssignedShift.LengthInMins
        return minutes_planned_outscope

    def get_shift_planned_outscope(self, s, d):
        shift_planned_outscope = 0
        nurses_outscope = [nurse for nurse in global_object.Nurse if not nurse.IsInsideOptScope]
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
            shifttype = self.get_shifttype(s)
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
            return sum(sum(self.get_shifttype(s).LengthInMins * model.IsAssign[s, n, d] for d in model.DAYS) for s in
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
            if d + max_cons_shift > last_day_in_scope and d + max_cons_shift < global_object.HorizonLength:
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
                nr_week = max(day.WeekID for day in global_object.Day)
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
            return 1000 * sum(model.MinTotalMinsUnder[n] for n in model.NURSES) \
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
        print(instance)
        print(model.values())
        # Execute solver
        print('execute solver start')
        solver_path = r'"C:\Program Files\IBM\ILOG\CPLEX_Studio2212\cplex\bin\x64_win64\cplex.exe"'
        opt = pyo.SolverFactory('cplex')
        opt.set_executable(r"C:\Program Files\IBM\ILOG\CPLEX_Studio2212\cplex\bin\x64_win64\cplex.exe", validate=False)

        print("Solver available:", opt.available())
        print("Solver executable:", opt.executable())
        print(f"Solver Path: {solver_path}")
        print(f"Solver Exists: {os.path.exists(solver_path)}")
        print('execute solver end')
        results = []
        if is_debug:
            instance.write(filename='lp_' + filename + '.lp', io_options={"symbolic_solver_labels": True})
            results = opt.solve(instance, logfile='cplexlog_' + filename)
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
            kpi_hard_before = global_object.TotalKPIHard
            kpi_soft_before = global_object.TotalKPISoft
            # Manually load the solution into the model
            handle_result_1_start = time.time()  # jwo1
            model.solutions.load_from(results)
            if is_debug:
                instance.display(filename='sol_' + filename + '.sol')
            handle_result_1_end = time.time()  # jwo1
            print("handle result 1 duration in seconds", (handle_result_1_end - handle_result_1_start))  # jwo1

            handle_result_2_start = time.time()  # jwo1
            self.unassign_shifts()
            handle_result_2_end = time.time()  # jwo1
            print("handle result 2 duration in seconds", (handle_result_2_end - handle_result_2_start))  # jwo1

            handle_result_3_start = time.time()  # jwo1
            sorted_nurses = sorted(instance.NURSES, key=lambda x: x, reverse=False)
            sorted_days = sorted(instance.DAYS, key=lambda x: x, reverse=False)
            handle_result_3_end = time.time()  # jwo1
            print("handle result 3 duration in seconds", (handle_result_3_end - handle_result_3_start))  # jwo1

            handle_result_4_start = time.time()  # jwo1
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
                            print(n, d, s)
                            break
            handle_result_4_end = time.time()  # jwo1
            print("handle result 4 duration in seconds", (handle_result_4_end - handle_result_4_start))  # jwo1

            # Do the planning
            handle_result_5_start = time.time()  # jwo1
            self.plan_optimizer_solution()
            handle_result_5_end = time.time()  # jwo1
            print("handle result 5 duration in seconds", (handle_result_5_end - handle_result_5_start))  # jwo1

            # Print in tabular format
            handle_result_6_start = time.time()  # jwo1
            sorted_nurses = sorted(global_object.Nurse, key=lambda x: x.EmployeeID, reverse=False)
            sorted_days = sorted(global_object.Day, key=lambda x: x.DayID, reverse=False)
            for n in sorted_nurses:
                for d in global_object.Day:
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
            print(global_object.calc_TotalKPIHard(True))
            print(global_object.calc_TotalKPISoft(True))
            handle_result_7_end = time.time()  # jwo1
            print("handle result 7 duration in seconds", (handle_result_7_end - handle_result_7_start))  # jwo1
            self.TotalKPIHard = global_object.TotalKPIHard
            self.TotalKPISoft = global_object.TotalKPISoft
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


# %%
class OptScopeNurse:
    def __init__(self,
                 optimizeriteration, nurse):
        # Relations
        self.OptScopeNurseShiftType = []
        self.OptScopeNurseDay = []
        self.OptScopeNurseDayShiftType = []
        self.OptimizerIteration = optimizeriteration
        optimizeriteration.set_relation_optscope_nurse(self)
        self.Nurse = nurse
        nurse.set_relation_optscope_nurse(self)

    def __str__(self):
        return 'Nurse' + self.Nurse.EmployeeID

    def set_relation_optscope_nurseshifttype(self, optscope_nurseshifttype):
        self.OptScopeNurseShiftType.append(optscope_nurseshifttype)

    def set_relation_optscope_nurseday(self, optscope_nurseday):
        self.OptScopeNurseDay.append(optscope_nurseday)

    def set_relation_optscope_nursedayshifttype(self, optscope_nursedayshift):
        self.OptScopeNurseDayShiftType.append(optscope_nursedayshift)


# %%
class OptScopeDay:
    def __init__(self,
                 optimizeriteration, day):
        # Relations
        self.OptScopeNurseDay = []
        self.OptScopeNurseDayShiftType = []
        self.OptScopeDayShiftType = []
        self.OptimizerIteration = optimizeriteration
        optimizeriteration.set_relation_optscope_day(self)
        self.Day = day
        day.set_relation_optscope_day(self)
        self.Next = []
        self.Previous = []

    def __str__(self):
        return 'Day' + str(self.Day.DayID)

    def set_relation_optscope_nurseday(self, optscope_nurseday):
        self.OptScopeNurseDay.append(optscope_nurseday)

    def set_relation_optscope_dayshifttype(self, optscope_dayshifttype):
        self.OptScopeDayShiftType.append(optscope_dayshifttype)

    def set_relation_optscope_nursedayshifttype(self, optscope_nursedayshifttype):
        self.OptScopeNurseDayShiftType.append(optscope_nursedayshifttype)

    def get_next(self):
        next = [optscope_d for optscope_d in self.OptimizerIteration.OptScopeDay if
                int(optscope_d.Day.DayID) == int(self.Day.DayID) + 1]
        if len(next) > 0:
            self.Next = next[0]

    def get_prev(self):
        prev = [optscope_d for optscope_d in self.OptimizerIteration.OptScopeDay if
                int(optscope_d.Day.DayID) == int(self.Day.DayID) - 1]
        if len(prev) > 0:
            self.Previous = prev[0]


# %%
class OptScopeShiftType:
    def __init__(self,
                 optimizeriteration, shifttype):
        # Relations
        self.OptScopeNurseShiftType = []
        self.OptScopeNurseDayShiftType = []
        self.OptScopeDayShiftType = []
        self.OptimizerIteration = optimizeriteration
        optimizeriteration.set_relation_optscope_shifttype(self)
        self.ShiftType = shifttype
        shifttype.set_relation_optscope_shifttype(self)

    def __str__(self):
        return 'ShiftType' + self.ShiftType.ShiftID

    def set_relation_optscope_nurseshifttype(self, optscope_nurseshifttype):
        self.OptScopeNurseShiftType.append(optscope_nurseshifttype)

    def set_relation_optscope_dayshifttype(self, optscope_dayshifttype):
        self.OptScopeDayShiftType.append(optscope_dayshifttype)

    def set_relation_optscope_nursedayshifttype(self, optscope_nursedayshifttype):
        self.OptScopeNurseDayShiftType.append(optscope_nursedayshifttype)


# %%
class OptScopeNurseShiftType:
    def __init__(self,
                 optscopenurse, optscopeshifttype, nurseshifttype):
        # Relations
        self.OptScopeNurse = optscopenurse
        optscopenurse.set_relation_optscope_nurseshifttype(self)
        self.OptScopeShiftType = optscopeshifttype
        optscopeshifttype.set_relation_optscope_nurseshifttype(self)
        self.NurseShiftType = nurseshifttype
        nurseshifttype.set_relation_optscope_nurseshifttype(self)


# %%
class OptScopeNurseDay:
    def __init__(self,
                 optscopenurse, optscopeday, nurseday):
        self.AssignedShift = []
        # Relations
        self.OptScopeNurseDayShiftType = []
        self.OptScopeNurse = optscopenurse
        optscopenurse.set_relation_optscope_nurseday(self)
        self.OptScopeDay = optscopeday
        optscopeday.set_relation_optscope_nurseday(self)
        self.NurseDay = nurseday
        nurseday.set_relation_optscope_nurseday(self)

    def set_relation_optscope_nursedayshifttype(self, optscope_nursedayshifttype):
        self.OptScopeNurseDayShiftType.append(optscope_nursedayshifttype)


# %%
class OptScopeDayShiftType:
    def __init__(self,
                 optscopeday, optscopeshifttype, dayshifttype):
        # Relations
        self.OptScopeDay = optscopeday
        optscopeday.set_relation_optscope_dayshifttype(self)
        self.OptScopeShiftType = optscopeshifttype
        optscopeshifttype.set_relation_optscope_dayshifttype(self)
        self.DayShiftType = dayshifttype
        dayshifttype.set_relation_optscope_dayshifttype(self)


# %%
class OptScopeNurseDayShiftType:
    def __init__(self,
                 optscopenurse, optscopeday, optscopeshifttype, optscopenurseday, nursedayshifttype):
        # Relations
        self.OptScopeNurse = optscopenurse
        optscopenurse.set_relation_optscope_nursedayshifttype(self)
        self.OptScopeDay = optscopeday
        optscopeday.set_relation_optscope_nursedayshifttype(self)
        self.OptScopeShiftType = optscopeshifttype
        optscopeshifttype.set_relation_optscope_nursedayshifttype(self)
        self.OptScopeNurseDay = optscopenurseday
        optscopenurseday.set_relation_optscope_nursedayshifttype(self)
        self.NurseDayShiftType = nursedayshifttype
        nursedayshifttype.set_relation_optscope_nursedayshifttype(self)


# %%

# %%
# Read data
with open(r'C:\Users\bianc\PycharmProjects\licenta_sheet\GA_yt\data\instances1_24\Instance1.txt', 'r') as file:
    raw_data = file.readlines()
    # %%
horizon_length = raw_data[4]
shifttype_input_start = raw_data.index('SECTION_SHIFTS\n') + 2
shifttype_input_end = raw_data.index('SECTION_STAFF\n') - 1
nurse_input_start = raw_data.index('SECTION_STAFF\n') + 2
nurse_input_end = raw_data.index('SECTION_DAYS_OFF\n') - 1
daysoff_input_start = raw_data.index('SECTION_DAYS_OFF\n') + 2
daysoff_input_end = raw_data.index('SECTION_SHIFT_ON_REQUESTS\n') - 1
shifton_req_input_start = raw_data.index('SECTION_SHIFT_ON_REQUESTS\n') + 2
shifton_req_input_end = raw_data.index('SECTION_SHIFT_OFF_REQUESTS\n') - 1
shiftoff_req_input_start = raw_data.index('SECTION_SHIFT_OFF_REQUESTS\n') + 2
shiftoff_req_input_end = raw_data.index('SECTION_COVER\n') - 1
cover_req_input_start = raw_data.index('SECTION_COVER\n') + 2
cover_req_input_end = len(raw_data)
    # %%

    # %%
    # Create objects
    #

global_object = GlobalObject(HorizonLength=int(horizon_length))
# global_object.save()
# global_object_id= GlobalObject.objects.last(id=0).first()
#print(len(GlobalObject.objects.all()))
def timetable(request):
    print("a fost apelat timetable ")
    #GlobalObject.objects.all().delete()
    print("horizon_length ",horizon_length)
    #global_object = GlobalObject(HorizonLength=int(horizon_length))
    global_object.save()
    global_object_id = GlobalObject.objects.all().last().id
    print(global_object_id)
    #global_object_id = GlobalObject.objects.filter(id=1).first()
    for shifttype in raw_data[shifttype_input_start:shifttype_input_end]:
        shifttype_information = shifttype.split(',')
        shift_id = shifttype_information[0]
        length_in_mins = int(shifttype_information[1])
        forbidden_shifts = shifttype_information[2].strip().split('|')
        forbidden_shifts = [i for i in forbidden_shifts if i]

        # Create new ShiftType object
        new_shifttype = ShiftType(shift_id, length_in_mins, forbidden_shifts, global_object_id)
        print(new_shifttype.ShiftID ,",",new_shifttype.LengthInMins)
        global_object.set_relation_shifttype(new_shifttype)
        new_shifttype.save()
        # print('create new shifttype', shift_id, length_in_mins, forbidden_shifts, new_shifttype.ForbiddenShifts == [], len(new_shifttype.ForbiddenShifts))
    for nurse in raw_data[nurse_input_start:nurse_input_end]:
        nurse_information = nurse.split(',')
        employee_id = nurse_information[0]
        max_shifts = nurse_information[1]
        max_total_mins = float(nurse_information[2])
        min_total_mins = float(nurse_information[3])
        max_cons_shifts = int(nurse_information[4])
        min_cons_shifts = int(nurse_information[5])
        max_cons_days_off = int(nurse_information[6])
        max_weekends = int(nurse_information[7])


        # Create new Nurse object
        new_nurse = Nurse(employee_id, max_shifts, max_total_mins, min_total_mins, max_cons_shifts, min_cons_shifts,
                          max_cons_days_off, max_weekends,
                          float('inf'), global_object_id)
        global_object.set_relation_nurse(new_nurse)
        new_nurse.save()
        # print('create new nurse', employee_id, max_shifts, max_total_mins, min_total_mins, max_cons_shifts, min_cons_shifts, max_cons_days_off, max_weekends)
    for day in range(global_object.HorizonLength):
        # Create new Day object

        d=Day(day, global_object_id)
        global_object.set_relation_day(d)
        d.save()
        print("Day", d.DayID)


    for day in global_object.Day:
        day.get_next()
        day.save()
        day.get_prev()
        day.save()
        print("Day",day.DayID)
    #
    for nurse in global_object.Nurse:
        for maxshift in nurse.MaxShifts.split('|'):
            equal_index = maxshift.index('=')
            shiftID = maxshift[0:equal_index]
            # shifttype = ShiftType.objects.filter(ShiftID=shiftID).first()
            shifttype = [s for s in global_object.ShiftType if s.ShiftID == shiftID][0]
            maxs = int(maxshift[equal_index + 1:])
            nur=NurseShiftType( Nurse=nurse, ShiftType=shifttype,MaxShifts=maxs)
            nur.save()
    # for nurse in Nurse.objects.all():
    #     for day in Day.objects.all():
    #         # Create new NurseDay object
    #         nr=NurseDay(IsDayOff=False,Nurse= nurse, Day=day)
    #         nr.save()
    for nurse in global_object.Nurse:
        for day in global_object.Day:
            # Create new NurseDay object
            nr=NurseDay(IsDayOff=False,Nurse= nurse, Day=day)
            nurse.set_relation_nurseday(nr)
            day.set_relation_nurseday(nr)
            nr.save()
    #
    # for dayoff in raw_data[daysoff_input_start:daysoff_input_end]:
    #     dayoff_information = dayoff.split(',')
    #     dayoff_nurse = dayoff_information[0]
    #     dayoff_dayoffs = dayoff_information[1:]
    #
    #     nurse = Nurse.objects.filter(EmployeeID=dayoff_nurse).first()
    #     for dayoff in dayoff_dayoffs:
    #         off = int(dayoff.strip())
    #         day = Day.objects.filter(DayID=off).first()
    #         # Find NurseDay object
    #         nurseday = NurseDay.objects.filter(Nurse=nurse.EmployeeID, Day=day.DayID).first()
    #
    #         nurseday.IsDayOff = True
    #         nurseday.save()
    for dayoff in raw_data[daysoff_input_start:daysoff_input_end]:
        dayoff_information = dayoff.split(',')
        dayoff_nurse = dayoff_information[0]
        dayoff_dayoffs = dayoff_information[1:]

        nurse = [n for n in global_object.Nurse if n.EmployeeID == dayoff_nurse][0]
        for dayoff in dayoff_dayoffs:
            off = int(dayoff.strip())
            day = [d for d in global_object.Day if d.DayID == off][0]
            # Find NurseDay object
            nurseday = [nd for nd in nurse.NurseDay if nd.Day == day][0]

            nurseday.IsDayOff = True
            nurseday.save()
    #
    # for nurse in Nurse.objects.all():
    #     for nurseday in NurseDay.objects.filter(Nurse=nurse):
    #         nurseday.get_next()
    #         nurseday.save()
    #         nurseday.get_prev()
    #         nurseday.save()
    for nurse in global_object.Nurse:
        for nurseday in nurse.NurseDay:
            nurseday.get_next()
            nurseday.save()
            nurseday.get_prev()
            nurseday.save()
    #
    # for shiftonreq in raw_data[shifton_req_input_start:shifton_req_input_end]:
    #     shiftonreq_information = shiftonreq.split(',')
    #     shiftonreq_nurse = shiftonreq_information[0]
    #     shiftonreq_day = int(shiftonreq_information[1])
    #     shiftonreq_shift = shiftonreq_information[2]
    #     shiftonreq_onrequestweight = float(shiftonreq_information[3])
    #     nurse = Nurse.objects.filter(EmployeeID=shiftonreq_nurse).first()
    #     day = Day.objects.filter(DayID=shiftonreq_day).first()
    #     shifttype = ShiftType.objects.filter(ShiftID=shiftonreq_shift).first()
    #
    #     # Create new NurseShiftTypeDay object
    #     nurseday = NurseDay.objects.filter(Nurse=nurse,Day=day).first()
    #
    #     nd=NurseDayShiftType(IsOnRequest=True,IsOffRequest= False,OnRequestWeight= shiftonreq_onrequestweight,OffRequestWeight= 0.0, Nurse=nurse,Day= day,ShiftType= shifttype, NurseDay=nurseday)
    #     nd.save()
    #
    for shiftonreq in raw_data[shifton_req_input_start:shifton_req_input_end]:
        shiftonreq_information = shiftonreq.split(',')
        shiftonreq_nurse = shiftonreq_information[0]
        shiftonreq_day = int(shiftonreq_information[1])
        shiftonreq_shift = shiftonreq_information[2]
        shiftonreq_onrequestweight = float(shiftonreq_information[3])
        nurse = [n for n in global_object.Nurse if n.EmployeeID == shiftonreq_nurse][0]
        day = [d for d in global_object.Day if d.DayID == shiftonreq_day][0]
        shifttype = [s for s in global_object.ShiftType if s.ShiftID == shiftonreq_shift][0]

        # Create new NurseShiftTypeDay object
        nurseday = [nd for nd in nurse.NurseDay if nd.Day == day][0]

        nd=NurseDayShiftType(IsOnRequest=True,IsOffRequest= False,OnRequestWeight= shiftonreq_onrequestweight,OffRequestWeight= 0.0, Nurse=nurse,Day= day,ShiftType= shifttype, NurseDay=nurseday)
        nurseday.set_relation_nursedayshifttype(nd)
        day.set_relation_nursedayshifttype(nd)
        nurse.set_relation_nursedayshifttype(nd)
        shifttype.set_relation_nursedayshifttype(nd)
        nd.save()
    # for shiftoffreq in raw_data[shiftoff_req_input_start:shiftoff_req_input_end]:
    #     shiftoffreq_information = shiftoffreq.split(',')
    #     shiftoffreq_nurse = shiftoffreq_information[0]
    #     shiftoffreq_day = int(shiftoffreq_information[1])
    #     shiftoffreq_shift = shiftoffreq_information[2]
    #     shiftoffreq_offrequestweight = float(shiftoffreq_information[3])
    #     nurse = Nurse.objects.filter(EmployeeID=shiftoffreq_nurse).first()
    #     day = Day.objects.filter(DayID=shiftoffreq_day).first()
    #     shifttype = ShiftType.objects.filter(ShiftID=shiftoffreq_shift).first()
    #
    #     # Create new or find existing NurseShiftTypeDay object
    #     nurseday = NurseDay.objects.filter(Nurse=nurse,Day=day).first()
    #
    #     nds=NurseDayShiftType(IsOnRequest=False,IsOffRequest= True,OnRequestWeight= 0.0,OffRequestWeight= shiftoffreq_offrequestweight,Nurse= nurse,Day= day,ShiftType= shifttype,NurseDay= nurseday)
    #     nds.save()
    for shiftoffreq in raw_data[shiftoff_req_input_start:shiftoff_req_input_end]:
        shiftoffreq_information = shiftoffreq.split(',')
        shiftoffreq_nurse = shiftoffreq_information[0]
        shiftoffreq_day = int(shiftoffreq_information[1])
        shiftoffreq_shift = shiftoffreq_information[2]
        shiftoffreq_offrequestweight = float(shiftoffreq_information[3])
        nurse = [n for n in global_object.Nurse if n.EmployeeID == shiftoffreq_nurse][0]
        day = [d for d in global_object.Day if d.DayID == shiftoffreq_day][0]
        shifttype = [s for s in global_object.ShiftType if s.ShiftID == shiftoffreq_shift][0]

        # Create new or find existing NurseShiftTypeDay object
        nurseday = [nd for nd in nurse.NurseDay if nd.Day == day][0]
        nds=NurseDayShiftType(IsOnRequest=False,IsOffRequest= True,OnRequestWeight= 0.0,OffRequestWeight= shiftoffreq_offrequestweight,Nurse= nurse,Day= day,ShiftType= shifttype,NurseDay= nurseday)
        nurseday.set_relation_nursedayshifttype(nds)
        day.set_relation_nursedayshifttype(nds)
        nurse.set_relation_nursedayshifttype(nds)
        shifttype.set_relation_nursedayshifttype(nds)
        nds.save()
    #
    # for cover in raw_data[cover_req_input_start:cover_req_input_end]:
    #     cover_information = cover.split(',')
    #     cover_day = int(cover_information[0])
    #     cover_shift = cover_information[1]
    #     cover_req = int(cover_information[2])
    #     cover_underweight = float(cover_information[3])
    #     cover_overweight = float(cover_information[4])
    #
    #     day = Day.objects.filter(DayID=cover_day).first()
    #     shifttype = ShiftType.objects.filter(ShiftID=cover_shift).first()
    #
    #     # Create new DayShiftType object
    #     dst=DayShiftType(NrRequired=cover_req,UnderCoverWeight= cover_underweight, OverCoverWeight=cover_overweight,ShiftType= shifttype,Day= day)
    #     dst.save()
    for cover in raw_data[cover_req_input_start:cover_req_input_end]:
        cover_information = cover.split(',')
        cover_day = int(cover_information[0])
        cover_shift = cover_information[1]
        cover_req = int(cover_information[2])
        cover_underweight = float(cover_information[3])
        cover_overweight = float(cover_information[4])

        day = [d for d in global_object.Day if d.DayID == cover_day][0]
        shifttype = [s for s in global_object.ShiftType if s.ShiftID == cover_shift][0]

        # Create new DayShiftType object
        dst=DayShiftType(NrRequired=cover_req,UnderCoverWeight= cover_underweight, OverCoverWeight=cover_overweight,ShiftType= shifttype,Day= day)
        day.set_relation_dayshifttype(dst)
        shifttype.set_relation_dayshifttype(dst)
        dst.save()
    #
    # # Obținem toate ShiftType din baza de date
    # all_shifttypes = ShiftType.objects.all()
    #
    # for nurse in Nurse.objects.all():  # Obținem toți medicii din baza de date
    #     for nurseday in NurseDay.objects.filter(Nurse=nurse).all():  # Obținem toate zilele de lucru ale fiecărui medic
    #         # Obținem toate ShiftType-urile deja atribuite acelei zile
    #         nds_shifts = NurseDayShiftType.objects.filter(Nurse =nurse,NurseDay=nurseday).values_list('ShiftType', flat=True)
    #
    #         # Găsim ShiftType-urile care nu sunt deja atribuite
    #         nds_shifts_to_create = [s for s in all_shifttypes if s not in nds_shifts]
    #
    #         for shifttype in nds_shifts_to_create:
    #             # Creăm un nou obiect NurseDayShiftType și îl salvăm
    #             nds = NurseDayShiftType(
    #                 IsOffRequest=False,
    #                 IsOnRequest=False,
    #                 OnRequestWeight=0.0,
    #                 OffRequestWeight=0.0,
    #                 Nurse=nurse,
    #                 Day=nurseday.Day,
    #                 ShiftType=shifttype,
    #                 NurseDay=nurseday
    #             )
    #             nds.save()
    all_shifttypes = [shifttype for shifttype in global_object.ShiftType]

    for nurse in global_object.Nurse:  # Obținem toți medicii din baza de date
        for nurseday in nurse.NurseDay:  # Obținem toate zilele de lucru ale fiecărui medic
            # Obținem toate ShiftType-urile deja atribuite acelei zile
            nds_shifts = [nds.ShiftType for nds in nurseday.NurseDayShiftType]
            nds_shifts_to_create = [s for s in all_shifttypes if s not in nds_shifts]

            # Găsim ShiftType-urile care nu sunt deja atribuite


            for shifttype in nds_shifts_to_create:
                # Creăm un nou obiect NurseDayShiftType și îl salvăm
                nds = NurseDayShiftType(
                    IsOffRequest=False,
                    IsOnRequest=False,
                    OnRequestWeight=0.0,
                    OffRequestWeight=0.0,
                    Nurse=nurse,
                    Day=nurseday.Day,
                    ShiftType=shifttype,
                    NurseDay=nurseday
                )
                shifttype.set_relation_nursedayshifttype(nds)
                nds.save()
    # global_object.Nurse= Nurse.objects.filter(GlobalObject_id=global_object_id)
    # #global_object.Nurse.append(nurse)
    # global_object.Day= Day.objects.filter(GlobalObject_id=global_object_id)
    #
    # # for shiftType in ShiftType.objects.filter(GlobalObject_id=global_object_id):
    # global_object.ShiftType=ShiftType.objects.filter(GlobalObject_id=global_object_id)

    print("nurse-nurseday",global_object.Nurse[0])
    print("nurse-DayShiftType",global_object.Nurse[0])
    print("nurse-shiftType",global_object.ShiftType[0])
    # # days=Day.objects.all()
    # # nurses=Nurse.objects.all()
    # # shifts-ShiftType.objects.
    # # for d in day:
    # #
    timelimit = dt.timedelta(seconds=120)
    maxiteration = 50
    #print(global_object.get_nurses()[0])
    optimizer = Optimizer(timelimit, maxiteration, 0.7, global_object)
    print("nurse ",optimizer.GlobalObject.Nurse)
    print ("days ",optimizer.GlobalObject.Day)
    print ("shiftType ",optimizer.GlobalObject.ShiftType)


    scopeselection_random = ScopeSelectionRandom('ScopeSelectionRandom', 15, 15, 10, optimizer)
    scopeselection_mintotalminutes = ScopeSelectionMinTotalMinutes('ScopeSelectionMinTotalMinutes', 5, 30, 10, optimizer)
    scopeselection_shiftonreq = ScopeSelectionShiftOnRequest('ScopeSelectionShiftOnRequest', 15, 15, 10, optimizer)
    scopeselection_shiftoffreq = ScopeSelectionShiftOffRequest('ScopeSelectionShiftOffRequest', 15, 15, 10, optimizer)
    scopeselection_shiftunder = ScopeSelectionShiftUnderCover('ScopeSelectionShiftUnderCover', 15, 15, 10, optimizer)
    scopeselection_shiftover = ScopeSelectionShiftOverCover('ScopeSelectionShiftOverCover', 15, 15, 10, optimizer)

    while optimizer.get_continue():
        # Select Scope selection
        selected_scope_selection = optimizer.select_scope_selection()
        print(optimizer.CurrentIteration, selected_scope_selection.Name)

        # Get OptScope
        days, nurses, shifttypes = selected_scope_selection.get_opt_scope()
        print("iteratie ",optimizer.CurrentIteration, " nurses ", nurses)
        print("iteratie ",optimizer.CurrentIteration, " days ", days)
        print("iteratie ",optimizer.CurrentIteration, " shiftTypes ", shifttypes)
        global_object.reset_isinsideoptscope()
        global_object.set_isinsideoptscope(nurses, days, shifttypes)
        print([d.DayID for d in days])
        print([n.EmployeeID for n in nurses])
        print([s.ShiftID for s in shifttypes])

        # Create OptimizerIteration object
        optimizer_iteration = OptimizerIteration(optimizer.CurrentIteration, time.time(), optimizer,
                                                 selected_scope_selection)

        # Create OptScope objects
        optimizer_iteration.create_optscope_objects(nurses, days, shifttypes)

        # Optimize OptScope
        is_debug = False
        current_dt = dt.datetime.now().strftime('%d%m%Y_%H%M%S')
        filename = str(optimizer_iteration.IterationNr) + '_' + current_dt

        model = optimizer_iteration.initialize_mip()
        instance, results = optimizer_iteration.solve_mip(model, is_debug, filename)
        optimizer_iteration.handle_result(model, instance, results, is_debug, filename, True)

        # Decide to rollback/accept solution
        # Update attributes
        optimizer.CurrentIteration = optimizer.CurrentIteration + 1
        print(optimizer.CurrentIteration)

    print('\nSelector statistics')
    for ss in optimizer.ScopeSelection:
        optimizer_iterations = [oi.IterationNr for oi in ss.OptimizerIteration]
        average_solve_duration = 0.0
        if len(optimizer_iterations) > 0:
            average_solve_duration = sum([oi.DurationSolveInSeconds for oi in ss.OptimizerIteration]) / len(
                optimizer_iterations)
        print(ss.Name, 'nr_selected', len(optimizer_iterations), 'iterations:', optimizer_iterations,
              average_solve_duration)

    print('\nOptimizer iteration statistics')
    print('#Feasible', len([oi for oi in optimizer.OptimizerIteration if oi.IsFeasible == True]))
    print('#Infeasible', len([oi for oi in optimizer.OptimizerIteration if oi.IsFeasible == False]))
    print('#Rollback', len([oi for oi in optimizer.OptimizerIteration if oi.IsRollback == True]))
    print('Rollback:', [oi.IterationNr for oi in optimizer.OptimizerIteration if oi.IsRollback == True])
    print('Hard KPI', [oi.TotalKPIHard for oi in optimizer.OptimizerIteration])
    print('Soft KPI', [oi.TotalKPISoft for oi in optimizer.OptimizerIteration])
    print('Time elapsed', [oi.TimeElapsedInSeconds for oi in optimizer.OptimizerIteration])

    print('\nOpt scope statistics')
    for n in global_object.Nurse:
        oi = [optscope_n for optscope_n in n.OptScopeNurse]
        print('nurse', n.EmployeeID, len(oi))
    for d in global_object.Day:
        oi = [optscope_d for optscope_d in d.OptScopeDay]
        print('day', d.DayID, len(oi))
    for s in global_object.ShiftType:
        oi = [optscope_s for optscope_s in s.OptScopeShiftType]
        print('shifttype', s.ShiftID, len(oi))
    for n in global_object.Nurse:
        for nd in n.NurseDay:
            for nds in nd.NurseDayShiftType:
                print(n.EmployeeID, nd.Day.DayID, nds.ShiftType.ShiftID, nds.NrSelectedInOptScope)

    selected_scope_selection = optimizer.select_scope_selection()
    # selected_scope_selection = [ss for ss in optimizer.ScopeSelection if isinstance(ss, ScopeSelectionShiftUnderCover)][0]
    print(optimizer.CurrentIteration, selected_scope_selection.Name)

    # Get OptScope
    days, nurses, shifttypes = selected_scope_selection.get_opt_scope()
    global_object.reset_isinsideoptscope()
    global_object.set_isinsideoptscope(nurses, days, shifttypes)
    print([d.DayID for d in days])
    print([n.EmployeeID for n in nurses])
    print([s.ShiftID for s in shifttypes])

    # Create OptimizerIteration objecthandle
    optimizer_iteration = OptimizerIteration(optimizer.CurrentIteration, time.time(), optimizer, selected_scope_selection)

    # Create OptScope objects
    optimizer_iteration.create_optscope_objects(nurses, days, shifttypes)

    # Optimize OptScope
    is_debug = False
    current_dt = dt.datetime.now().strftime('%d%m%Y_%H%M%S')
    filename = str(optimizer_iteration.IterationNr) + '_' + current_dt

    model = optimizer_iteration.initialize_mip()
    instance, results = optimizer_iteration.solve_mip(model, is_debug, filename)
    optimizer_iteration.handle_result(model, instance, results, is_debug, filename, True)

    # Decide to rollback/accept solution
    # Update attributes
    optimizer.CurrentIteration = optimizer.CurrentIteration + 1

    print('\nOpt scope statistics')
    for n in global_object.Nurse:
        oi = [optscope_n for optscope_n in n.OptScopeNurse]
        print('nurse', n.EmployeeID, len(oi))
    for d in global_object.Day:
        oi = [optscope_d for optscope_d in d.OptScopeDay]
        print('day', d.DayID, len(oi))
    for s in global_object.ShiftType:
        oi = [optscope_s for optscope_s in s.OptScopeShiftType]
        print('shifttype', s.ShiftID, len(oi))
    for n in global_object.Nurse:
        for nd in n.NurseDay:
            for nds in nd.NurseDayShiftType:
                print(n.EmployeeID, nd.Day.DayID, nds.ShiftType.ShiftID, nds.NrSelectedInOptScope)

    optimizer.plan_up_to_iteration(1)

    # Print in tabular format
    sorted_nurses = sorted(global_object.Nurse, key=lambda x: x.EmployeeID, reverse=False)
    sorted_days = sorted(global_object.Day, key=lambda x: x.DayID, reverse=False)
    for n in sorted_nurses:
        for d in global_object.Day:
            nurseday = [nd for nd in n.NurseDay if nd.Day == d][0]
            assigned_shifttype = nurseday.AssignedShift
            assigned_shifttype_id = ''
            if assigned_shifttype != []:
                assigned_shifttype_id = assigned_shifttype.ShiftID
            # print(assigned_shifttype_id, end='')
            print(n.EmployeeID, d.DayID, assigned_shifttype_id, end='')
            if d != sorted_days[-1]:
                print('\t', end='')
        print('\n', end='')

    # Print KPI
    print('=====')
    print(global_object.calc_TotalKPIHard(True))
    print(global_object.calc_TotalKPISoft(True))

    # Run one iteration debug
    # Get OptScope
    # nurses = [n for n in global_object.Nurse if n.EmployeeID == 'C' or n.EmployeeID == 'D' or n.EmployeeID == 'I' or n.EmployeeID == 'P' or n.EmployeeID == 'Q']
    # days = [d for d in global_object.Day if d.DayID >= 2 and d.DayID <= 6]
    # shifttypes = [s for s in global_object.ShiftType if s.ShiftID == 'D' or s.ShiftID == 'D' or s.ShiftID == 'D']
    nurses = [n for n in global_object.Nurse]
    days = [d for d in global_object.Day]
    shifttypes = [s for s in global_object.ShiftType]
    global_object.reset_isinsideoptscope()
    global_object.set_isinsideoptscope(nurses, days, shifttypes)

    # Create OptimizerIteration object
    scope_selection = [ss for ss in optimizer.ScopeSelection][0]
    optimizer_iteration = OptimizerIteration(99, time.time(), optimizer, scope_selection)

    # Create OptScope objects
    optimizer_iteration.create_optscope_objects(nurses, days, shifttypes)

    print(type(optimizer_iteration.OptScopeNurse), [n.Nurse.EmployeeID for n in optimizer_iteration.OptScopeNurse])

    # Optimize OptScope
    is_debug = True
    current_dt = dt.datetime.now().strftime('%d%m%Y_%H%M%S')
    filename = str(optimizer_iteration.IterationNr) + '_' + current_dt

    model = optimizer_iteration.initialize_mip()
    instance, results = optimizer_iteration.solve_mip(model, is_debug, filename)
    optimizer_iteration.handle_result(model, instance, results, is_debug, filename, False)
    import pandas as pd

    def generate_schedule(global_object):
        schedule_data = []

        for day in sorted(global_object.Day, key=lambda d: d.DayID):
            for nurse in global_object.Nurse:
                nurse_day = next((nd for nd in nurse.NurseDay if nd.Day == day), None)
                if nurse_day:
                    shift = nurse_day.AssignedShift.ShiftID if nurse_day.AssignedShift else "Off"
                    schedule_data.append({"Day": day.DayID, "Nurse": nurse.EmployeeID, "Shift": shift})

        # Convertim într-un DataFrame pentru a fi mai ușor de citit
        df = pd.DataFrame(schedule_data)
        df = df.pivot(index="Day", columns="Nurse", values="Shift").fillna("Off")

        print("\nOrarul Generat:\n")
        print(df)

        # Salvare în CSV pentrupentru analiză ulterioară
        df.to_csv("nurse_schedule.csv")
        print("\nOrarul a fost salvat în `nurse_schedule.csv`")

    # Apelează funcția după ce algoritmul a generat un orar
    generate_schedule(global_object)


from django.contrib.auth.decorators import login_required
from django.http import JsonResponse

@login_required
def get_user_id(request):
    # Accesăm ID-ul utilizatorului care este deja salvat în sesiune
    user_id = request.user.id
    return JsonResponse({'user_id': user_id})


def guidelines(request):
    """Render the application usage guidelines."""
    return render(request, 'pages/guidelines.html')
