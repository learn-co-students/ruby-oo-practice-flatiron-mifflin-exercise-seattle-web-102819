require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager1 = Manager.new("manager1_name", "department1", 40)
manager2 = Manager.new("manager2_name", "department2", 45)
manager3 = Manager.new("manager3_name", "department3", 35)
manager4 = Manager.new("manager4_name", "department4", 30)
manager5 = Manager.new("manager5_name", "department5", 25)
manager1.hire_employee("lili", 2000)
manager2.hire_employee("acac", 3000)
manager3.hire_employee("bebe", 2900)
manager4.hire_employee("cici", 1500)
manager5.hire_employee("dede", 1000)




binding.pry
puts "done"
