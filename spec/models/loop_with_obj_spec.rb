require 'rails_helper'

RSpec.describe LoopWithObj, type: :model do
  describe "#all_true" do
    it "returns true if all values in array are true" do
      loop_with_obj = LoopWithObj.new

      expect(loop_with_obj.all_true([true, true])).to be_truthy
    end
  end
end

RSpec.describe Fish, type: :model do
  describe "#all_can_swim" do

    it "returns true if all fish can swim" do
      fish1 = Fish.new("dory")
      fish2 = Fish.new("crush")
      fish3 = Fish.new("marlin")

      can_swim = Swim.new([fish1, fish2, fish3])

      expect(can_swim.all_can_swim).to be_truthy
    end
  end
end
