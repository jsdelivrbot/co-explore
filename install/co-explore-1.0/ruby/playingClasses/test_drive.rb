
#
class Professor
  attr_accessor :name

  def initialize name
    @name = name
  end
end

#
class Student
  attr_accessor :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end
end

#
class Course
  attr_accessor :subject, :professor, :students

  def initialize
    @students = []
  end

  def add_student(student)
    @students << student
  end
end


# Express the following using code (assuming those classes exist)
# 1. Create a Course object
# 2. Create some students
# 3. create a professor
# 4. add them to the course
# 5. write code to print the names of all the people in the course


course = Course.new
st1 = Student.new('Bob', 'bob@gmail.com')
st2 = Student.new('Alice', 'Alice@gmail.com')
st3 = Student.new('Masha', 'Masha@gmail.com')
st4 = Student.new('Medved', 'Medved@gmail.com')
prof = Professor.new('Smith')
course.professor = prof
course.add_student(st1)
course.add_student(st2)
course.add_student(st3)
course.add_student(st4)

course.students.each do |student|
  puts student.name
end

puts course.professor.name

puts prof.name


require 'pp'
pp course
