require 'rails_helper'

RSpec.describe "Reserves", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/reserves/show"
      expect(response).to have_http_status(:success)
    end
  end

end
