require 'rails_helper'

RSpec.describe UsersController, type: :request do
  let(:user) { create(:user) }
  let(:other_user) { create(:user) }

  before do
    sign_in user
  end
  describe 'GET #show' do
    before do
      get user_path(user.id)
    end

    it'マイページにユーザーの名前,メールアドレス、誕生日が表示されること' do
      expect(response.body).to include user.name
      expect(response.body).to include user.email
      expect(response.body).to include user.birthday
    end

    it'マイページに他のユーザーの名前,メールアドレス、誕生日が表示されないこと' do
      expect(response.body).not_to include other_user.name
      expect(response.body).not_to include other_user.email
      expect(response.body).not_to include other_user.birthday
    end
  end
end
