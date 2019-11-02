require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

bob = Manager.new("Bob", "Photos", 30)
dan = Manager.new("Dan", "PR", 45)
kurt = Manager.new("Kurt", "Photos", 37)

# steve = Employee.new("Steve", 11000, "Bob")

bob.hire_employee("Steve", 8000)
bob.hire_employee("Dante", 9000)
kurt.hire_employee("John", 10000)

binding.pry
puts "done"
