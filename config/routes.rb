Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  root 'lists#index'
  resources :lists, except: %i[edit update destroy] do
    resources :bookmarks, only: %i[new create] do
      resources :movies
    end
  end
    resources :bookmarks, only: %i[destroy]
end
