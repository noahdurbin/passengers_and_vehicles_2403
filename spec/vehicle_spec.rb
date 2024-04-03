require './lib/passenger'
require './lib/vehicle'

RSpec.describe Passenger do
    before do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")
    end
end