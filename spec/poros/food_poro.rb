require 'rails_helper'

describe 'food poro' do
  it 'has readable attributes' do
    food_data = {
      :description=>"SWEET POTATOES",
      :gtinUpc=>"070560951975",
      :brandOwner=>"The Pictsweet Company",
      :ingredients=>"SWEET POTATOES."}
    food = FoodPoro.new(food_data)

    expect(food.gtin_upc).to eq ('070560951975')
    expect(food.description).to eq ('SWEET POTATOES')
    expect(food.brand_owner).to eq ('The Pictsweet Company')
    expect(food.ingredients).to eq ('SWEET POTATOES.')
  end
end
