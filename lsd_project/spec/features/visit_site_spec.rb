require 'rails_helper'

feature 'visit the site' do
  scenario 'Hello World!' do
    visit '/'
    expect(page).to have_content 'LSD'
  end
  scenario 'list' do
    visit '/list'
    expect(page).to have_content 'List'
  end
  scenario 'contact' do
    visit '/contact'
    expect(page).to have_content 'Contact'
  end
  scenario 'data' do
    visit '/data'
    expect(page).to have_content 'Data'
  end
end