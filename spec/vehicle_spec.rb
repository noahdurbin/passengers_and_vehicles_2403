require './lib/passenger'
require './lib/vehicle'

RSpec.describe Passenger do

    before do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
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
end