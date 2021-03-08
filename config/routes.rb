Rails.application.routes.draw do
  resources :notes
  namespace :api do
    namespace :v1 do
      
      resources :user_palettes
      resources :palettes
      resources :users
      resources :notes

      post "/auth", to: "auth#create"
      get "/current_user", to: "auth#show"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
