require 'sidekiq/web'

Rails.application.routes.draw do
  resources :products
  resources :budget_item_lists
  resources :properties do
    resources :units do 
      resources :budget_items
    end
  end

  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end


  devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: 'properties#index'
    end
    unauthenticated do
      root to: "home#index", as: :unauthenticated_root
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
