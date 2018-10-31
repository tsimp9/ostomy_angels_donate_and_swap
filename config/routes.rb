Rails.application.routes.draw do
  get 'pages/about'
  get 'pages/contact'
  get 'pages/faq'
  get 'pages/links'
  get 'home/index'
  devise_for :users

  root to: "home#index"

end
