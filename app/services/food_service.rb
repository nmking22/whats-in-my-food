class FoodService
  def self.find_foods_by_query(query)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search?query=#{query}") do |f|
      f.params[:api_key] = "#{ENV['food_key']}"
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
