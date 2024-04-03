require './lib/passenger'

RSPec.describe Passenger do
    before do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end

    it 'can recall the passengers name' do
        expect(@charlie.name).to eq("Charlie")
    end
end