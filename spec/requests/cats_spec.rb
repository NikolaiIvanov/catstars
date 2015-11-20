require 'rails_helper'

RSpec.describe "Cats", type: :request do
  describe "GET /cats" do
    it "Should not work." do
      get cats_path
      expect(response).to have_http_status(302)
    end
  end
end
