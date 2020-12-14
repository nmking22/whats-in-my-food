class FoodsController < ApplicationController
  def index
    @query = params[:food_search]
    results = FoodFacade.food_query(@query)
    @total_hits = results[:total_hits]
    @foods = results[:food_poros]
  end
end
