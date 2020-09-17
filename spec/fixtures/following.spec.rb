require 'rails_helper'
RSpec.feature 'Following', type: :feature do
  before :each do
    @user = User.create(Fullname: 'Ame Zidi', Username: 'Ame')
    @user = User.create(Fullname: 'Zidi Ame', Username: 'Zidi')
  end
  it 'Should be able to follow a user' do
    visit login_path
    fill_in 'Username', with: 'Ame'
    click_button 'Log In'
    click_on 'Zidi Ame'
    first(:css, '.font-follow-icon').click
    expect(page).to have_css('.font-unfollow-icon')
  end

  it 'Should be able to unfollow a user' do
    visit login_path
    fill_in 'Username', with: 'Ame'
    click_button 'Log In'
    click_on 'Zidi Ame'
    first(:css, '.font-unfollow-icon').click
    expect(page).to have_css('.font-follow-icon')
  end
end
