class FoodsController < ApplicationController
  def index
    query = params[:food_search]
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search?query=#{query}") do |f|
      f.params[:api_key] = "#{ENV['food_key']}"
    end
    @foods = JSON.parse(response.body, symbolize_names: true)
  end
end
