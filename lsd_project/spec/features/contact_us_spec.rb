require 'rails_helper'

feature 'Contact us' do
  scenario 'Submit form!' do
    visit '/contact'

    within('#contactform') do
      fill_in 'name', :with => 'Jp'
      fill_in 'email', :with => 'bob@gmail.com'
      fill_in 'content', :with => 'Hello World'
      click_on 'submit'
    end

    expect(current_path).to eq '/contact'
    expect(page).to have_content 'Thank You!'
  end
end