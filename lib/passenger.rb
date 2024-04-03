class Passenger

    attr_reader :name,
                :age,
                :driver

    def initialize(passenger_data)
        @name = passenger_data['name']
        @age = passenger_data['age']
        @driver = false
    end

    def adult?
        @age >= 18 
    end

    def driver?
        driver == true
    end

    def drive
        @driver = true
    end
end