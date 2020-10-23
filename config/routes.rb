Rails.application.routes.draw do
  resources :examples
  devise_for :users, controllers: { registrations: "registrations"}
  resources :after_signup, only: [:show, :update]
  resources :professors
  resources :users do
    collection do
      get :onboard
    end
  end

  scope '(:locale)', locale: /en/ do
    root to: 'pages#home'
  end
end
