require 'robot'

RSpec.describe Robot do
  describe ".initialize" do

    it "should be an object of the class Robot" do
      expect(subject).to be_a_kind_of(Robot)
    end

    it "should have x and y coordinates and a direction" do
      expect(subject.x).to be(nil)
      expect(subject.y).to be(nil)
      expect(subject.facing).to be(nil)
    end

    it "should accept and execute a place command" do
      subject.place(0,0,'NORTH')
      expect(subject.x).to eq(0)
      expect(subject.y).to eq(0)
      expect(subject.facing).to eq('NORTH')
    end

    it "should know if it has been placed" do
      subject.place(0,0,'NORTH')
      expect(subject.placed).to eq(true)
    end

    it "should move forward one space in the direction it is facing when given the command FORWARD" do
      subject.place(0,0,'NORTH')
      subject.forward
      expect(subject.y).to eq(1)
      subject.place(2,3,'EAST')
      subject.forward
      expect(subject.x).to eq(3)
      subject.place(2,3,'SOUTH')
      subject.forward
      expect(subject.y).to eq(2)
    end
  end
end