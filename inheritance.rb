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
    private
    attr_reader :name, :salary, :title, :boss

end

class Manager < Employee

    def initialize(name, salary, title, boss = nil)
        super
        @employees = []
        # p self.title
    end
    

end

will = Employee.new("will", 300, "underling")
p will

sean = Manager.new("sean", 1000000, "supreme leader")
p sean
p sean.bonus(0.5)
