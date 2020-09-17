require 'rails_helper'

RSpec.feature 'Authentications', type: :feature do
  before :each do
    @user = User.create(Fullname: 'mark james', Username: 'mark')
  end

  it 'Should Signup' do
    visit signup_path
    fill_in 'user[Fullname]', with: 'new_user'
    fill_in 'user[Username]', with: 'newuser1'
    click_button 'sign up'
    expect(page).to have_content('Register')
  end

  scenario 'signup page user already taken' do
    visit '/signup'
    fill_in 'user[Username]', with: @user.Username
    click_button 'sign up'
    expect(page).to have_content('Username has already been taken')
  end

  it 'Should Login' do
    visit root_path
    fill_in 'session[Username]', with: 'mark'
    click_button 'Log In'
    expect(page).to have_content('HOME')
    expect(page).to have_content('PROFILE')
  end

  it 'Should Logout' do
    visit root_path
    fill_in 'session[Username]', with: 'mark'
    click_button 'Log In'
    expect(page).to have_content('HOME')
    expect(page).to have_content('PROFILE')
    click_link 'LOGOUT'
    expect(page).to have_content('Netflixer')
  end
end
