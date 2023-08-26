Rails.application.routes.draw do
  resources :users
  resources :groups
  get 'home/index'
  resources :point_of_interests do
    get 'comments', on: :member
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
