require 'rails_helper'

describe 'food service' do
  it 'finds foods by query' do
    service = FoodService.find_foods_by_query('sweet potatoes')

    expect(service).to be_a(Hash)

    expect(service).to have_key(:foodSearchCriteria)
    expect(service[:totalHits]).to be_an(Integer)

    expect(service[:foodSearchCriteria]).to have_key(:query)
    expect(service[:foodSearchCriteria][:query]).to be_a(String)

    expect(service).to have_key(:foods)
    expect(service[:foods]).to be_an(Array)
    expect(service[:foods][0]).to be_a(Hash)

    expect(service[:foods][0]).to have_key(:description)
    expect(service[:foods][0][:description]).to be_a(String)

    expect(service[:foods][0]).to have_key(:gtinUpc)
    expect(service[:foods][0][:gtinUpc]).to be_a(String)

    expect(service[:foods][0]).to have_key(:brandOwner)
    expect(service[:foods][0][:brandOwner]).to be_a(String)

    expect(service[:foods][0]).to have_key(:ingredients)
    expect(service[:foods][0][:ingredients]).to be_a(String)
  end
end
