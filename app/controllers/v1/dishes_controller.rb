module V1
  class DishesController < V1::ApplicationController

    def get_related_resources
      render json: { lol: "krieger" }
    end

  end
end
