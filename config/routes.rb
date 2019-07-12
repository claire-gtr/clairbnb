Rails.application.routes.draw do
  devise_for :users
  resources :flats  do
    collection do                       # collection => no restaurant id in URL
      get 'mine'                         # RestaurantsController#top
    end
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
