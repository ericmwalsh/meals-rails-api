# config/initializers/session_store.rb
MealsRailsApi::Application.config.session_store :redis_store,
  servers: "#{ENV["REDISTOGO_URL"]}/0/cache",
  expires_in: 90.minutes
