require './lib/passenger'
require './lib/vehicle'
require './lib/national_park'

RSpec.describe NationalPark do
    before do
        @rocky_mtn = NationalPark.new("Rocky Mountain National Park", 20)
        @glacier = NationalPark.new("Glacier National Park", 15)
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @vehicle.add_passenger(@charlie)
        @vehicle.add_passenger(@jude)
        @vehicle.add_passenger(@taylor)
    end

    it 'has a name and admission price' do
        expect(@rocky_mtn.name).to eq("Rocky Mountain National Park")
        expect(@rocky_mtn.admission_price).to eq(20)
    end

    it 'can list all vehicles in the park' do
        expect(@rocky_mtn.vehicles).to eq([])
        @rocky_mtn.admit_vehicle(@vehicle)
        expect(@rocky_mtn.vehicles).to eq([@vehicle])
    end

    it 'can list all the passengers in the park' do
        @rocky_mtn.admit_vehicle(@vehicle)
        expect(@rocy_mtn.visitors).to eq([@charlie, @jude, @taylor])
    end

    it 'can calculate revenue generated' do

    end
end