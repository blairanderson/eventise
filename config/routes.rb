Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json } do
    resources :events, only: [:index, :show, :create, :update, :destroy] do 
      resources :tickets, only: [:index, :create, :update, :destroy]
    end
    resources :orders, only: [:create, :show]
    resource :user, only: [:create, :show, :update]
    resource :session, only: [:create, :destroy]
    resources :bookmarks, only: [:create, :destroy]
  end
  root "static_pages#root"
end
