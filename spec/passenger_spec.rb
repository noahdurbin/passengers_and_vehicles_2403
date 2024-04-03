require './lib/passenger'

RSPec.describe Passenger do
    before do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end

    it 'can recall the passengers name' do
        expect(@charlie.name).to eq("Charlie")
    end

    it 'can recall the passenger age' do
        expect(@charlie.age).to eq(18)
    end

    it 'can determine if passenger is an adult or not' do
        expect(@charlie.adult?).to eq(true)
        expect(@taylor.adult?).to eq(false)
    end

    it ' can assign a passenger as a driver' do
        expect(@charlie.driver?).to eq(false)

        @charlie.drive

        expect(@charlie.driver?).to eq(true)
    end
end