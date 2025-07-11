from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from .models import *
from django import forms

from django.contrib import admin
from django.utils.html import format_html
from .models import Department, CourseName


class DepartmentAdmin(admin.ModelAdmin):
    # Listează câmpurile pe care le vrei în listă
    list_display = ('DepartmentName', 'HeadOfDepartment', 'registered_date_badge', 'courses_list')

    # Filtrează după anumite câmpuri
    list_filter = ('HeadOfDepartment', 'RegisteredDate', 'Courses')

    # Permite căutarea după anumite câmpuri
    search_fields = ('DepartmentName', 'HeadOfDepartment')

    # Permite filtrarea pe baza unei date
    date_hierarchy = 'RegisteredDate'

    # Permite editarea directă în listă pentru HeadOfDepartment
    list_editable = ('HeadOfDepartment',)

    # Setează numărul de elemente pe pagină
    list_per_page = 10
    list_max_show_all = 10

    # Metodă personalizată pentru a afișa data în format badge
    def registered_date_badge(self, obj):
        return format_html(
            '<i class="fas fa-calendar-alt text-info"></i><span class="badge badge-dark p-2 ml-2 text-white">{}</span>',
            obj.RegisteredDate.strftime('%Y-%m-%d'))

    registered_date_badge.short_description = 'Registered Date'

    # Metodă personalizată pentru a lista cursurile (Courses) asociate cu departamentul
    def courses_list(self, obj):
        return ", ".join([course.Course for course in obj.Courses.all()])  # Afișează numele cursurilor

    courses_list.short_description = 'Courses'


# Înregistrează modelul Department în admin
admin.site.register(Department, DepartmentAdmin)


class InstructorAdmin(UserAdmin):
    list_display = ('username', 'FirstName','LastName',"MiddleName", 'email', 'registered_date_badge')
    #list_filter = ('Department', 'RegisteredDate')
    search_fields = ('username', 'email')
    list_per_page = 10   
    list_max_show_all = 10
    list_editable=('FirstName','LastName',"MiddleName", 'email',)
    fieldsets = (
        (None, {
            'fields': ('username', 'password')
        }),
        ('Personal Info', {
            'fields': ('email','FirstName','LastName',"MiddleName")
        }),
        # ('Department Info', {
        #     'fields': ('Department',)
        # }),
        ('Permissions', {
            'fields': ('is_active', 'is_staff', 'is_superuser', 'groups', 'user_permissions')
        }),
        ('Important dates', {
            'fields': ('last_login', 'date_joined')
        }),
    )
    def registered_date_badge(self, obj):
        return format_html('<i class="fas fa-calendar-alt text-info"></i><span class="badge badge-dark p-2 ml-2 text-white">{}</span>', obj.RegisteredDate.strftime('%Y-%m-%d'))
    registered_date_badge.short_description = 'Registered Date'
admin.site.register(Instructor, InstructorAdmin)


class TimeTableMainAdmin(admin.ModelAdmin):
    list_display = ('YearOfStudy', 'Programme', 'Semister', 'Department', 'registered_date_badge')
    list_filter = ('YearOfStudy', 'Semister', 'Department', 'RegisteredDate')
    search_fields = ('YearOfStudy', 'Programme', 'Semister')
    date_hierarchy = 'RegisteredDate'
    #list_editable=('Department',)
    list_per_page = 10   
    list_max_show_all = 10
    list_editable=( 'Semister', 'Department',)
    def registered_date_badge(self, obj):
        return format_html('<i class="fas fa-calendar-alt text-info"></i><span class="badge badge-dark p-2 ml-2 text-white">{}</span>', obj.RegisteredDate.strftime('%Y-%m-%d'))
    registered_date_badge.short_description = 'Registered Date'
admin.site.register(TimeTableMain, TimeTableMainAdmin)


class TimePickerWidget(forms.TimeInput):
    template_name = 'widgets/time_picker.html'
class TimeTableForm(forms.ModelForm):
    class Meta:
        model = TimeTable
        fields = '__all__'
        widgets = {
            'Timestart': TimePickerWidget(),
            'TimeEnd': TimePickerWidget(),
        }

class TimeTableAdmin(admin.ModelAdmin):
    form = TimeTableForm
    list_display = ('id','Day','CourseName', 'Venue', 'Timestart', 'TimeEnd',  'Programme','registered_date_badge')
    list_filter = ('Day', 'Programme', 'RegisteredDate')
    search_fields = ('CourseName', 'Venue')
    date_hierarchy = 'RegisteredDate'
    list_editable=('CourseName','Day', 'Venue', 'Programme',)
    list_per_page = 5   
    list_max_show_all = 5
    def registered_date_badge(self, obj):
        return format_html('<i class="fas fa-calendar-alt text-info"></i><span class="badge badge-dark p-2 ml-2 text-white">{}</span>', obj.RegisteredDate.strftime('%Y-%m-%d'))
    registered_date_badge.short_description = 'Registered Date'
admin.site.register(TimeTable, TimeTableAdmin)

@admin.register(CourseName)
class CourseNameAdmin(admin.ModelAdmin):
    list_display = ('CourseCode', 'CourseDescription', 'Course', 'Max_numb_students', 'instructors_list')
    search_fields = ('Course', 'CourseCode', 'CourseDescription')
    list_per_page = 10
    list_max_show_all = 10
    list_editable = ('Course', 'CourseDescription',)

    def instructors_list(self, obj):
        return ", ".join([f"{instructor.FirstName} {instructor.LastName}" for instructor in obj.Instructors.all()])

    # presupunând că 'Instructor' are atributul 'name'
    instructors_list.short_description = 'Instructors'  # Opțional, schimbă titlul coloanei din admin

admin.site.register(Venue)
