Rails.application.routes.draw do

  root 'products#index'

  # Routes for the Delivery resource:
  # CREATE
  get "/deliveries/new", :controller => "deliveries", :action => "new"
  post "/create_delivery", :controller => "deliveries", :action => "create"

  # READ
  get "/deliveries", :controller => "deliveries", :action => "index"
  get "/deliveries/:id", :controller => "deliveries", :action => "show"

  # UPDATE
  get "/deliveries/:id/edit", :controller => "deliveries", :action => "edit"
  post "/update_delivery/:id", :controller => "deliveries", :action => "update"

  # DELETE
  get "/delete_delivery/:id", :controller => "deliveries", :action => "destroy"
  #------------------------------

  # Routes for the Favorite resource:
  # CREATE
  get "/favorites/new", :controller => "favorites", :action => "new"
  post "/create_favorite", :controller => "favorites", :action => "create"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"
  get "/favorites/:id", :controller => "favorites", :action => "show"

  # UPDATE
  get "/favorites/:id/edit", :controller => "favorites", :action => "edit"
  post "/update_favorite/:id", :controller => "favorites", :action => "update"

  # DELETE
  get "/delete_favorite/:id", :controller => "favorites", :action => "destroy"
  #------------------------------

  # Routes for the Allergeninfo resource:
  # CREATE
  get "/allergeninfos/new", :controller => "allergeninfos", :action => "new"
  post "/create_allergeninfo", :controller => "allergeninfos", :action => "create"

  # READ
  get "/allergeninfos", :controller => "allergeninfos", :action => "index"
  get "/allergeninfos/:id", :controller => "allergeninfos", :action => "show"

  # UPDATE
  get "/allergeninfos/:id/edit", :controller => "allergeninfos", :action => "edit"
  post "/update_allergeninfo/:id", :controller => "allergeninfos", :action => "update"

  # DELETE
  get "/delete_allergeninfo/:id", :controller => "allergeninfos", :action => "destroy"
  #------------------------------

  # Routes for the Allergen resource:
  # CREATE
  get "/allergens/new", :controller => "allergens", :action => "new"
  post "/create_allergen", :controller => "allergens", :action => "create"

  # READ
  get "/allergens", :controller => "allergens", :action => "index"
  get "/allergens/:id", :controller => "allergens", :action => "show"

  # UPDATE
  get "/allergens/:id/edit", :controller => "allergens", :action => "edit"
  post "/update_allergen/:id", :controller => "allergens", :action => "update"

  # DELETE
  get "/delete_allergen/:id", :controller => "allergens", :action => "destroy"
  #------------------------------

  # Routes for the Brand resource:
  # CREATE
  get "/brands/new", :controller => "brands", :action => "new"
  post "/create_brand", :controller => "brands", :action => "create"

  # READ
  get "/brands", :controller => "brands", :action => "index"
  get "/brands/:id", :controller => "brands", :action => "show"

  # UPDATE
  get "/brands/:id/edit", :controller => "brands", :action => "edit"
  post "/update_brand/:id", :controller => "brands", :action => "update"

  # DELETE
  get "/delete_brand/:id", :controller => "brands", :action => "destroy"
  #------------------------------

  # Routes for the Flavor resource:
  # CREATE
  get "/flavors/new", :controller => "flavors", :action => "new"
  post "/create_flavor", :controller => "flavors", :action => "create"

  # READ
  get "/flavors", :controller => "flavors", :action => "index"
  get "/flavors/:id", :controller => "flavors", :action => "show"

  # UPDATE
  get "/flavors/:id/edit", :controller => "flavors", :action => "edit"
  post "/update_flavor/:id", :controller => "flavors", :action => "update"

  # DELETE
  get "/delete_flavor/:id", :controller => "flavors", :action => "destroy"
  #------------------------------

  # Routes for the Product resource:
  # CREATE
  get "/products/new", :controller => "products", :action => "new"
  post "/create_product", :controller => "products", :action => "create"

  # READ
  get "/products", :controller => "products", :action => "index"
  get "/products/:id", :controller => "products", :action => "show"

  # UPDATE
  get "/products/:id/edit", :controller => "products", :action => "edit"
  post "/update_product/:id", :controller => "products", :action => "update"

  # DELETE
  get "/delete_product/:id", :controller => "products", :action => "destroy"
  #------------------------------

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
