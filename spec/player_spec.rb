require 'player'

RSpec.describe Player do
  describe ".initialize" do

    # Returns whatever is on the last line of the robot place method, but it feels wrong. It is testing an outgoing message, which is tested when it comes into the robot object, so that message is already tested.
    it "should accept a string and decide if it is place, move or report" do
      expect(subject.parse('PLACE 0,0,NORTH')).to eq("NORTH")
    end


  end
end