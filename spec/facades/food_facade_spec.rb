require 'rails_helper'

describe 'food facade' do
  it 'finds foods and query info' do
    facade = FoodFacade.food_query('sweet potatoes')

    expect(facade).to be_a(Hash)

    expect(facade).to have_key(:total_hits)
    expect(facade[:total_hits]).to be_an(Integer)

    expect(facade).to have_key(:food_poros)
    expect(facade[:food_poros]).to be_an(Array)
    expect(facade[:food_poros][0]).to be_a(FoodPoro)
  end
end
