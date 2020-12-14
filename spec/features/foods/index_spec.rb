require 'rails_helper'

describe 'foods index page' do
  it 'food search yields 10 results' do
    visit root_path

    fill_in :food_search, with: 'sweet potatoes'
    click_button 'Search'

    expect(current_path).to eq(foods_path)
    expect(page).to have_content('Total Results: 39244')
    within '#foods-0' do
      expect(page).to have_content('GTIN/UPC Code: 070560951975')
      expect(page).to have_content('Description: SWEET POTATOES')
      expect(page).to have_content('Brand Owner: The Pictsweet Company')
      expect(page).to have_content('Ingredients: SWEET POTATOES')
    end

    expect(page).to have_css('#foods-9')
    expect(page).not_to have_css('#foods-10')
  end
end
