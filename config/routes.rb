Rails.application.routes.draw do
  resources :todos do
    collection do
      delete 'destroy_all'
    end
    patch :change_status, on: :member
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "todos/user/:user_id" => "todos#show_by_user", as: :todos_by_user
  # Defines the root path route ("/")
  # root "posts#index"
end
