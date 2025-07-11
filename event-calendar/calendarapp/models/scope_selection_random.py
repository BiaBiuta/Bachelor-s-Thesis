import os
import tempfile
import time
import random
import pyomo.environ as pyo
from pyomo.opt import SolverFactory, SolverStatus, TerminationCondition
from calendarapp.models.scope_selection import ScopeSelection

class ScopeSelectionRandom(ScopeSelection):
    pass