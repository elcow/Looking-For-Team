Lft::Application.routes.draw do
	#resources :view_user
	
	match '/view',				:to => 'view#index'
	match '/view/user/:id', 	:to => 'view#user'
	match '/view/project/:id', 	:to => 'view#project'
	match '/view/team/:id', 	:to => 'view#team'
	
=begin
	match '/account',			:to => 'account#edit'
	match '/account/signup', 	:to => 'account#signup'
	match '/account/login', 	:to => 'account#login'
	match '/account/edit',		:to => 'account#edit'
	match '/account/logout',	:to => 'account#logout'
=end

	match '/find',				:to => 'find#index'
=begin
	match '/find/people', 		:to => 'find#people'
	match '/find/projects', 	:to => 'find#projects'
	match '/find/teams', 		:to => 'find#teams'
=end
	
	root 						:to => 'lft#index'
	match '/index', 			:to => 'lft#index'
	match '/contact', 			:to => 'lft#contact'
	match '/about', 			:to => 'lft#about'
	
	
	get 'lft/index'
	get 'lft/contact'
	get 'lft/about'
	get 'lft/find'
	get 'lft/signup'
	
	get 'find/people'
	get 'find/projects'
	get 'find/teams'
	
	get 'login/signup'
	
	get 'view/user'
	get 'view/project'
	get 'view/team'

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
  

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
