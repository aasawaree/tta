Tta::Application.routes.draw do
  get '/home' => "home#index"

  get '/upload' => "upload#new"

  get '/pyramid' => "visualization#pyramid"

  get '/defect_analysis' => "defect_analysis#new"

  get '/comparative_analysis' => "comparative_analysis#create"

  post '/upload/create'

  post '/upload/automatic' => "upload#automatic"

  get '/upload/show'

  get '/admin/' => 'admin#view'

  match '/compare_runs/' => 'compare_runs#index'


  match '/get_sub_project_data' => 'compare_runs#getSubProjects'
  match '/get_test_types' => 'compare_runs#getTestTypes'
  match '/get_compare_json' => 'compare_runs#getCompareJson'
  match '/get_compare_dates' => 'compare_runs#getDateRuns'

  resources :projects, :junit_xml_data, :j_unit_xmls, :unit_test_xml
  post '/comparative_analysis/result' => "comparative_analysis#date_filter"
  post '/pyramid/result' => "visualization#sub_project_filter"
  post '/defect_analysis/result' => "defect_analysis#sub_project_filter"
  get '*path' => 'error#handle404'
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
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'


end
