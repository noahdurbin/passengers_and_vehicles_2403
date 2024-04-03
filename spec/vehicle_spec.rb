require './lib/passenger'
require './lib/vehicle'

RSpec.describe Passenger do

    before do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
    end

    it 'vehicle initializes with year make and model' do
        expect(@vehicle.year).to eq("2001")
        expect(@vehicle.make).to eq("Honda")
        expect(@vehicle.model).to eq("Civic")
    end

    it 'can check if vehicle is speeding and' do
        expect(@vehicle.speeding?).to eq(false)
        @vehicle.speed
        expect(@vehicle.speeding?).to eq(true)
    end

    it 'can hold passengers and initializes with no passengers' do
        expect(@vehicle.passengers).to eq([])
        @vehicle.add_passenger(@charlie)
        @vehicle.add_passenger(@jude)
        @vehicle.add_passenger(@taylor)
        expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
    end
end