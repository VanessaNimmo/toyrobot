require 'table'

# .method indicates class methods
# #method indicates instance methods
RSpec.describe Table do
  describe ".initialize" do
    # You only need to define subject if your object is initialized with parameters.
    subject = Table.new(5,5)

    it "should be an object of class Table" do
      expect(subject).to be_a_kind_of(Table)
    end

    it "should have sides 5 squares long that are indexed from 0" do
      expect(subject.x).to eq(4)
      expect(subject.y).to eq(4)
    end

    it "should have access to four directions" do
      expect(Table::DIRECTIONS).to be_a_kind_of(Array)
      expect(Table::DIRECTIONS.length).to eq(4)
      expect(Table::DIRECTIONS).to eq(['NORTH','EAST','SOUTH','WEST'])
    end
  end
end