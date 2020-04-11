Rails.application.routes.draw do
  devise_for :users

  scope '(:locale)', locale: /en/ do
    root to: 'pages#home'
  end
end
