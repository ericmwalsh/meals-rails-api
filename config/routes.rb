Rails.application.routes.draw do

  # authentication
  devise_for :admins, controllers: { sessions: 'sessions' }

  root to: "v1/meals#index"

  # meals json_api
  namespace :v1 do
    jsonapi_resources :meals do
      # get 'relationships/dishes', :to => 'dishes#get_related_resources'
      jsonapi_related_resources :dishes
      Meal::RELATIONS.each do |relation|
        get "relationships/#{relation}" => "#{relation}#get_related_resources",
          defaults: { relationship: relation, source: "v1/meals" }
      end
    end
  end

end
