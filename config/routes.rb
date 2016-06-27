Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins
  get 'home/index'

  resources :degrees
  resources :college_levels
  resources :tags
  resources :types
  resources :subjects

  get "home/admin", :path => "admin"
  post "home/admin"

  get "home/start", :path => "start"
  post "home/start"

  get "home/info", :path => "info"
  post "home/info"

  get "home/contact", :path => "contact"
  post "home/contact"

  root 'home#index'

  devise_scope :admin do
      match '/sessions/admin', to: 'devise/sessions#create', via: :post
    end


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
