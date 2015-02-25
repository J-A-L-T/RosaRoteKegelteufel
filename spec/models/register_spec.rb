require 'rails_helper'

describe 'Sign up' do
  before(:each) do
    visit 'topics#index'
  end

  it 'allows to sign up' do
    click_link 'Sign up'
    fill_in 'user_email', with: 'test@test.com'
    fill_in 'user_username', with: 'Testi'
    fill_in 'user_password', with: '12345678'
    fill_in 'user_password_confirmation', with: '12345678'

    expect { click_button 'Sign up' }.to change { User.count }.by(1)

    expect(page).to have_content 'Testi'
  end
end
