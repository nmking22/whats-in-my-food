require 'rails_helper'

describe 'welcome index page' do
  it 'form directs to foods index' do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'

    expect(current_path).to eq(foods_path)
  end
end
