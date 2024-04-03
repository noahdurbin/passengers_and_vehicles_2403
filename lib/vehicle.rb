class Vehicle
    
    attr_reader :year,
                :make,
                :model,
                :speeding,
                :passengers

    def initialize(year, make, model)
        @year = year
        @make = make
        @model = model
        @speeding = false
        @passengers = []
    end

    def speeding?
        @speeding == true
    end

    def speed 
        @speeding = true
    end

    def add_passenger(passenger)
        @passengers << passenger
    end

    def num_adults
        adults_array = @passengers.find_all do |passenger|
            passenger.adult?
        end
        adults_array.length
    end
end