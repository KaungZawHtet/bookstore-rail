Rails.application.routes.draw do
  root "books#index"
  resources :books do
    resources :customers
  end
  # The resources method also sets up URL and path helper methods that we can use to keep our code from depending on a specific route configuration


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
