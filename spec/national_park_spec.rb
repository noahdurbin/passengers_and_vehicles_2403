require './lib/passenger'
require './lib/vehicle'
require './lib/national_park'

RSpec.describe NationalPark do
    before do
        @rocky_mtn = NationalPark.new("Rocky Mountain National Park", 20)
        @glacier = NationalPark.new("Glacier National Park", 15)
    end
end