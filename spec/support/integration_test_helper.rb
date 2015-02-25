module IntegrationTestHelper
  def sign_in(user)
    click_link 'Sign in'
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: '12345678'
    click_button 'Sign in'
  end
end