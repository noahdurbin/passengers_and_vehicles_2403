require './lib/passenger'
require './lib/vehicle'

RSpec.describe Passenger do
    before do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
    end

    it 'vehicle initializes with year make and model' do
        expect(@vehicle.year).to eq("2001")
        expect(@vehiclel.make).to eq("Honda")
        expect(@vehicle.model).to eq("Civic")
    end
end