require 'rails_helper'

describe 'Sign in' do
  context 'existing user' do
    let!(:user) { FactoryGirl.create(:user) }

    before(:each) do
      visit 'topics#index'
    end

    it 'allows to sign in' do
      click_link 'Sign in'
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: '12345678'
      click_button 'Sign in'

      expect(page).to have_content user.username
    end
  end
end