Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :account_user_roles
    end
  end
  namespace :api do
    namespace :v2 do
      resources :custom_posts
    end
  end
  resources :tasks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
