class Manager
  @@all = []
  @@deps = []
  @@age = []
  attr_reader :name, :department, :age, :employees 
 def initialize(name, department, age) 
        @name = name 
        @department = department
        @age = age 
        @employees = []
        @@all << self 
        @@deps << department
        @@age << age 
 end 
 
 def self.all
     @@all  
 end 
 def hire_employee(name, salary)
     @employees << Employee.new(name, salary, @name)
 end 
 def self.all_departments
     @@deps
 end 
 def self.average_age
     
   @@age.sum/ @@all.length 

 end 

end
