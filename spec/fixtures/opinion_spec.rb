require 'rails_helper'

RSpec.feature 'Opinion', type: :feature do
  before :each do
    # @user = User.create(Fullname: 'Ben Ten', Username: 'ten')
    @user = User.create(Fullname: 'Django', Username: 'django')
    Opinion.create(AuthorId: @user.id, Text: 'The_usual_suspects is the one!')
  end

  it 'Should create an opinion' do
    visit login_path
    fill_in "session[Username]", with: "django"
    click_button 'Log In'
    fill_in 'opinion[Text]', with: 'The_usual_suspects is the one!'
    click_button 'Speak!'
    expect(page).to have_content('HOME')
  end
end
