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

  scenario 'can update cat' do
    visit '/cats/new'
    fill_in 'name', with: 'Tabular'
    fill_in 'color', with: 'Pink'
    fill_in 'kittens', with: '4'
    click_on 'Add Cat'
    click_on 'Tabular'
    fill_in 'name', with: 'Lola'
    click_on 'Update Cat'
    expect(page).to have_content('Lola')
    expect(page).to_not have_content('Tabular')
  end

end