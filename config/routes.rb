Forvm::Application.routes.draw do
  
  root to: "pages#home"
  
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :schools, only: [:index, :show]
  resources :cities, only: [:index, :show]
  
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  
  get 'search', to: 'search#index'
  
  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
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
