module V1
  class MealsController < V1::ApplicationController

    def show_relationship
      redirect_to "dishes/get_related_resources"
    end

  end
end
