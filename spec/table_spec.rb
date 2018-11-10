require 'table'

# .method indicates class methods
# #method indicates instance methods
RSpec.describe Table do
  describe ".initialize" do
    # This next line is optional as rspec just knows that what you are testing is an instance of the described class.
    # subject = Table.new

    it "should be an object of class Table" do
      expect(subject).to be_a_kind_of(Table)
    end

    it "should have sides 5 squares long" do
      expect(subject.x).to eq(5)
      expect(subject.y).to eq(5)
    end

    it "should have access to four directions" do
      expect(Table::DIRECTIONS).to be_a_kind_of(Array)
      expect(Table::DIRECTIONS.length).to eq(4)
      expect(Table::DIRECTIONS).to eq(['NORTH','EAST','SOUTH','WEST'])
    end
  end
end