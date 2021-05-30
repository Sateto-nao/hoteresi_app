require 'rails_helper'

RSpec.describe HomeController, type: :request do
  let(:user) { create(:user) }
  let(:user2) { create(:user) }

  describe "GET #top" do
    context 'ログイン前の場合'
    it "ヘッダーに'login','sign up'があること" do
      within 'header' do
        expect(response.body).to include "login"
        expect(response.body).to include "sign up"
      end
    end

    context 'ログインしてる場合'
    before do
      sign_in user
    end
    it "ヘッダーにユーザーの名前があること" do
      within 'header' do
        expect(response.body).to not_to include "login"
        expect(response.body).to not_to include "sign up"
        expect(response.body).to not_to include user2.name
        expect(response.body).to to include user.name
      end
    end
  end
end
