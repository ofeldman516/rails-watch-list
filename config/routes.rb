Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  resources :lists, except: %i[edit update destroy] do
    resources :bookmark, only: %i[new create]
  end
end
