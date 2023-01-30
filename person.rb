class Person
    def initialize(age, name = "Unknown", parent_permission = true)
        @id = Random.rand(1..100)
        @name = name
        @age = age
        @parent_permission = parent_permission
    end

    attr_accessor :name

    attr_accessor :age

    def id
        @id
    end

    def can_use_services?
        if is_of_age? || @parent_permission
            return true
        end
    end

    private
    def is_of_age?
        if @age >= 18
            return true
        else
            return false
        end
    end
end