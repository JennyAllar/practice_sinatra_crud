require 'spec_helper'
require 'capybara/rspec'

Capybara.app = Application

feature 'Homepage' do
  scenario 'see cats that have been created' do
    visit '/cats/new'

    fill_in 'name', with: 'Siamese'
    fill_in 'color', with: 'Grey'
    fill_in 'kittens', with: '9'
    click_on 'Add Cat'

    expect(page).to have_content 'Siamese'
  end
end