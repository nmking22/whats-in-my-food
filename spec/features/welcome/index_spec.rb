require 'rails_helper'

describe 'welcome index page' do
  it 'form directs to foods index' do
    visit '/'

    save_and_open_page

    expect(page).to have_content 'Search'
  end
end
