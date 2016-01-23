module V1
  class MealResource < V1::BaseResource
    attributes :title, :description, :cost, :prep_time, :created_at

    has_many :dishes
  end
end
