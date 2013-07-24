Forvm::Application.routes.draw do
  
  root to: "pages#home"
  
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :schools, only: [:index, :show]
  resources :cities, only: [:index, :show]
  
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  
  get 'search', to: 'search#index'
  
end
#== Route Map
# Generated on 24 Jul 2013 09:44
#
#      root GET      /                                  pages#home
# edit_user GET      /users/:id/edit(.:format)          users#edit
#      user GET      /users/:id(.:format)               users#show
#           PATCH    /users/:id(.:format)               users#update
#           PUT      /users/:id(.:format)               users#update
#           DELETE   /users/:id(.:format)               users#destroy
#   schools GET      /schools(.:format)                 schools#index
#    school GET      /schools/:id(.:format)             schools#show
#    cities GET      /cities(.:format)                  cities#index
#      city GET      /cities/:id(.:format)              cities#show
#     login GET      /login(.:format)                   sessions#new
#    logout GET      /logout(.:format)                  sessions#destroy
#           GET|POST /auth/:provider/callback(.:format) sessions#create
#    search GET      /search(.:format)                  search#index
