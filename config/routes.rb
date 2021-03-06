SampleApp::Application.routes.draw do
  resources :orders

  resources :line_items

  resources :carts

  #Esto me lo agrego Rails automaticamente al crear el DynamicPagesProducts controller
  #get "dynamic_pages_products/smartphones"
  #get "dynamic_pages_products/tablets"
  #get "dynamic_pages_products/accessories"
  
  #Creando mis rutas nombradas para dynamic_pages_products
  
  match '/smartphones', to: 'dynamic_pages_products#smartphones'
  match '/tablets', 	to: 'dynamic_pages_products#tablets'
  match '/accessories', to: 'dynamic_pages_products#accessories'

  resources :products  
  #Creando mis rutas nombradas para nuevas vistas de static_pages
  
  match '/aviso',    to: 'static_pages#aviso'
  match '/uso',    to: 'static_pages#uso'
  match '/sitio',    to: 'static_pages#sitio'
  match '/sucursales',    to: 'static_pages#sucursales'
    

  #get "users/new"
  resources :users
  resources :sessions, only: [:new, :create, :destroy]


	#Adding a mapping for the root route
  root to: 'static_pages#home'
  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  match '/signup', to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
