Rails.application.routes.draw do
  devise_for :users
  resources :after_signup

  scope '(:locale)', locale: /en/ do
    root to: 'pages#home'
  end
end
