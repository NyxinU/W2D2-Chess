class Employee
  attr_reader :salary, :sub_salary

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    @sub_salary = 0
  end

  def bonus(multipler)
    @salary * multipler
  end

  def sub_salary
    sal = 0
    employee_list.each do |emp|
      sal += emp.salary
    end
    @sub_salary = sal
  end

end

class Manager < Employee
  attr_reader :employee_list
  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @employee_list = []
  end

  def bonus(multipler)
    sal = 0
    employee_list.each do |employee|
      sal = employee.salary + employee.sub_salary
    end
    sal * multipler
  end

end

# David = Employee.new("david", "TA", 10000, "darren")
# Shawna = Employee.new("shawna","TA", 12000, "darren")
# Darren = Manager.new("darren","TA Manager", 78000, "ned")
# Darren.employee_list = [David, Shawna]
