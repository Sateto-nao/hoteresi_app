require 'rails_helper'

RSpec.describe "Reserves", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/reserve/new"
      expect(response).to have_http_status(:success)
    end
  end

end
