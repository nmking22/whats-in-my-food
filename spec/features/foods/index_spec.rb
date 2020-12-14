require 'rails_helper'

describe 'foods index page' do
  it 'food search yields 10 results' do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    expect(current_path).to eq(foods_path)
    expect(page).to have_content('Total Results: 42')
    within '#foods-0' do
      expect(page).to have_content('GTIN/UPC code: 4')
      expect(page).to have_content('Description: 4')
      expect(page).to have_content('Brand Owner: 4')
      expect(page).to have_content('Ingredients: 4')
    end

    expect(page).to have_css('#foods-9')
    expect(page).not_to have_css('#foods-10')
  end
end
