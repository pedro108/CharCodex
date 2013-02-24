CharCodex::Application.routes.draw do
	resources :comments, :adventures, :users, :backgrounds,
						:encounters, :monsters, :terrains, :skills, :armors, :deities,
            :domains, :domain_powers, :spells, :feats, :gears, :weapons,
            :languages, :feats, :races, :spell_schools, :character_classes,
            :rogue_talents

	resources :contents do
		resources :comments
  end

  resources :encounters do
    member do
      put '/battle_grid_update' => :battle_grid_update
    end
    collection do
      post '/battle_grid_create' => :battle_grid_create
    end
  end

  resources :characters, :except => [:update, :show] do
    collection do
      put '/update' => :update
    end
  end

  match "logout" => "user_sessions#destroy"
	match "signup" => "users#signup"
	match "blog" => "contents#blog"

	match ":locale/:controller(/:action(/:id))"

  root :to => "contents#blog"

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
