require "rails_helper"

describe SandboxService do
  describe ".dynamically_build" do
    it "adds to the array when passed a 'values' array" do
      dynamically_build = SandboxService.dynamically_build(values: ["1", "2"])

      expect(dynamically_build.products[0].id).to eq "1"
      expect(dynamically_build.products[1].id).to eq "2"
    end

    it "does not add to the array if 'values' is nil" do
      dynamically_build = SandboxService.dynamically_build(values: nil)

      expect(dynamically_build.products).to eq([])
    end
  end
end
