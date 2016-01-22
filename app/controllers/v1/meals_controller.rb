module V1
  class MealsController < ApplicationController
    def index
      render json: Meal.all
    end
  end
end
