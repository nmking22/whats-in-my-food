class FoodsController < ApplicationController
  def index
    results = FoodFacade.food_query(params[:food_search])
    @query = results[:query]
    @total_hits = results[:total_hits]
    @foods = results[:food_poros]
  end
end
