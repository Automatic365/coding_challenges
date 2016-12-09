class Person
    attr_accessor :age
    def initialize(initialAge)
        if initialAge > 0
            @age = initialAge
        else
            @age = 0
            puts "Age is not valid, setting age to 0."
        end
    end

    def amIOld
        if age < 13
            puts "You are young."
        elsif age >= 18
            puts "You are old."
        else
            puts "You are a teenager."
        end
    end

    def yearPasses
        @age+=1
    end
end
