class Manager
	attr_reader :name
	attr_accessor :department, :age, :employees
	@@all = []

	def initialize(name, department, age)
		@name = name
		@department = department
		@age = age
		@employees = []
		@@all << self
	end

	def hire_employee(name, salary)
		@employees << Employee.new(name, salary, self.name)
	end

	def self.all
		@@all
	end

	def self.all_departments
		@@all.map {|manager| manager.department}.uniq
	end

	def self.average_age
		sum = @@all.map {|manager| manager.age}.sum
		sum / @@all.length.to_f
	end
end