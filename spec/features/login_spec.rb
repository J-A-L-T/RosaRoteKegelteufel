require 'rails_helper'

describe 'Sign in' do
  context 'existing user' do
    let!(:user) { FactoryGirl.create(:user) }

    before(:each) do
      visit 'topics#index'
      sign_in user
    end

    it 'allows to sign in' do
      expect(page).to have_content 'Signed in successfully.'
    end

    it 'allows to sign out' do
      first('.dropdown').click_link user.username
      click_link 'Log out'

      expect(page).to_not have_content user.username
    end
  end
end