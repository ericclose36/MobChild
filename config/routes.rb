Rails.application.routes.draw do

  resources :articles do
    get 'page/:page', :action => :index, :on => :collection
    resources :comments
  end

  devise_for :users
  root to: "home#index"

  concern :paginatable do
    get '(page/:page)', :action => :index, :on => :collection, :as => ''
  end

  # resources :articles, :concerns => :paginatable

  get 'person/index'

  get 'about_us' => 'page#about_us'
  get 'blog' => 'page#blog'
  get 'page/calendar(/:year(/:month))' => 'page#calendar', :as => 'calendar'
  get 'contact_us' => 'page#contact_us'
  get 'home' => 'page#home'
  get 'login' => 'page#login'
  get 'newsletter' => 'page#newsletter'
  get 'products' => 'page#products'

  get 'interests/home'
  get 'anime' => 'interests#anime'
  get 'films' => 'interests#films'
  get 'football' => 'interests#football'
  get 'swimming' => 'interests#swimming'
  get 'writing' => 'interests#writing'

  get 'projects/home'
  get 'projects/course01'
  get 'projects/course02'
  get 'projects/course03'
  get 'projects/course04'
  get 'projects/course05'

  get 'course_work/home'
  get 'course_work/course01'
  get 'course_work/course02'
  get 'course_work/course03'
  get 'course_work/course04'
  get 'course_work/course05'

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
