class Employee
    @@all = []
    attr_reader :name, :salary, :manager_name
    def initialize(name, salary, manager_name)
        @name = name 
        @salary = salary
        @manager_name = manager_name
        @@all << self 
    end 
    def self.all
        @@all
    end 
    def self.paid_over(number)
        self.all.select do |ep|
            ep.salary >= number
        end 
    end 
    def self.find_by_department(department_name)
         m_dp = Manager.all.find do |mg|
                mg.department == department_name
                end
         m_dp.employees[0]
        
    end 
    def  tax_bracket 
        @@all.select do |ep|
           @salary-1000 <= ep.salary && ep.salary <= @salary+1000
        end 
    end 
end
