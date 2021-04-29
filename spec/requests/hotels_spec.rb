require 'rails_helper'

RSpec.describe "Hotels", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/hotels/new"
      expect(response).to have_http_status(:success)
    end
  end

end
