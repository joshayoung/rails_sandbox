require "rails_helper"

describe SunService do
  it "returns a student object" do
    sun_service = SunService.new

    expect(sun_service).to be_an_instance_of(SunService)
  end
end
