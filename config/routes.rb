Rails.application.routes.draw do
  # Devise path
  devise_for :users, path: "", controllers:
    {
      sessions: "auth/sessions",
      passwords: "auth/passwords",
      confirmations: "auth/confirmations",
      registrations: "auth/registrations"
    }
  root to: "home#index"

  namespace :dashboard do
    root to: "home#index"
    resources :accounts
  end
end