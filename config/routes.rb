Wedding::Application.routes.draw do
  
  get "thankyoupage", to: "thankyoupage#show", as: "thankyou"
  
  get "admin" => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  controller :reservations do
    get 'reservations/index' => :index
    get 'reservations' => :new
    post 'reservations' => :create
    delete 'reservations' => :destroy
  end
  
  get "sessions/create"

  get "sessions/destroy"

  resources :users

  resources :reservations

  resources :guestbookposts
  
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
  root :to => 'welcome#index', :as => 'welcome'
  
  get 'weddingparty', to: 'weddingparty#weddingparty'
  
  get 'parents', to: 'parents#parents'
  
  get 'attractions', to: 'attractions#attractions'
  
  get 'events', to: 'events#events'
  
  get 'childcare', to: 'childcare#childcare'
  
  get 'registry', to: 'registry#registry'
  
  get 'accommodations', to: 'accommodations#accommodations'
  
  get 'bachelorette', to: 'bachelorette#bachelorette'
  
  get 'freedomhall', to: 'freedom_hall#index'
  
  get 'verify', to: 'freedom_hall#verification_page'
  
  post 'verify', to: 'freedom_hall#verify'
  
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
