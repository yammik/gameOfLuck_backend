Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
        resources :countries, only: %i(index show)
        resources :players, only: %i(index show new create edit update)
        resources :steps, only: %i(index show new create)
    end
  end
end
