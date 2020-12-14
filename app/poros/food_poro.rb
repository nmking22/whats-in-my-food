class FoodPoro
  attr_reader :gtin_upc,
              :description,
              :brand_owner,
              :ingredients
              
  def initialize(food_data)
    @gtin_upc = food_data[:gtinUpc]
    @description = food_data[:description]
    @brand_owner = food_data[:brandOwner]
    @ingredients = food_data[:ingredients]
  end
end
