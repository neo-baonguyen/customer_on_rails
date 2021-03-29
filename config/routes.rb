Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "customers#index"

  resources :customers do
    collection do
      get "alphabetized"
    end

    collection do
      get "missing_email"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
