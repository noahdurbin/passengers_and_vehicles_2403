class NationalPark

    attr_reader :name,
                :admission_price,
                :vehicles,
                :revenue

    def initialize(name, admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles = []
        @visitors = []
        @revenue = nil
    end

    def admit_vehicle(vehicle)
        collect_revenue
        @vehicles << vehicle
    end
    
    def visitors
        @vehicles.map do |vehicle|
            vehicle.passengers.find_all do |person|
                @visitors << person
            end
        end.flatten
    end

    def collect_revenue
        @visitors.each do |visitor|
            if visitor.adult?
                @revenue += @admission_price
            end
        end
    end
end