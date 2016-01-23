Rails.application.routes.draw do

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
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
