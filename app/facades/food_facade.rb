class FoodFacade
  def self.food_query(query)
    foods_data = FoodService.find_foods_by_query(query)
    poros = foods_data[:foods][0..9].map do |food_data|
      FoodPoro.new(food_data)
    end
    food_hash = {
      total_hits: foods_data[:totalHits],
      query: foods_data[:foodSearchCriteria][:query],
      food_poros: poros
    }
  end
end
