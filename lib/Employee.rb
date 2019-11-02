class Employee
	attr_reader :name
	attr_accessor :salary, :manager_name
	@@all = []

	def initialize(name, salary, manager_name)
		@name = name
		@salary = salary
		@manager_name = manager_name
		@@all << self
	end

	def self.all
		@@all
	end

	def self.paid_over(num)
		@@all.select {|employee| employee.salary > num}
	end

	def self.find_by_department(input)
		Manager.all.select do |manager|
			if manager.department == input
				return manager.employees.first
			end
		end

		# Manager.all.select {|manager| manager.department == input}
	end

	def tax_bracket
		@@all.select {|employee| (employee.salary - self.salary).abs <= 1000 && employee != self}
	end


end
