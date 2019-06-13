require 'rails_helper'

RSpec.describe GradesController, type: :controller do
  describe "#create" do
    context "when submitting to the create action" do
      it "returns a 200 status" do
        post_result = post :create

        expect(post_result).to redirect_to(grades_url)
      end
    end
  end
end
