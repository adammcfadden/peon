Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "sessions" }
  namespace :api do
    resources :jobs
    resources :actions
  end
  root 'api/jobs#index'

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
