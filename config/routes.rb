Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: %i[:index, :show, :new, :create] do
    resources :bookmarks, only: %i[:new :create]
  end
  resources :bookmark, only: %i[destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
