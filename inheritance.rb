#Inheritance class mini-project Will Davis & Sean Abbas
class Employee
    def initialize(name, salary, title, boss = nil)
        @name = name
        @salary = salary
        @title = title
        @boss = boss
    end

    def bonus(multiplier)
        return salary * multiplier
    end

    def get_hired(manager)
		@boss = manager
		manager.employees << self
    end


    private

    attr_reader :name, :salary, :title, :boss, :employees
	attr_writer :employees

	protected
	attr_reader :salary

end

class Manager < Employee

    def initialize(name, salary, title, boss = nil)
        super
        @employees = []
        # p self.title
    end

	def bonus(multiplier)
		employees_salary * multiplier
	end
	
	def employees_salary
		return 0 if employees.empty?
		salary_sum = 0
		employees.each do |employee|
			if employee.is_a? Manager
				salary_sum += employee.employees_salary
			else
				salary_sum += employee.salary
			end
		end
		return salary_sum + self.salary
	end
	
	
	attr_accessor :employees

    


end

will = Employee.new("will", 300, "underling")
# p will

sean = Manager.new("sean", 1000000, "supreme leader")
# p sean
# p sean.bonus(0.5)

steve = Employee.new('steve', 10000, "corporate slave")

# p steve
steve.get_hired(sean)
will.get_hired(sean)
# puts
# p steve
# puts
# p sean
# puts
# p will
p will.bonus(0.01)

p sean.bonus(0.1)
