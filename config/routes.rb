Rails.application.routes.draw do
  get 'pages/about'
  get 'pages/contact'
  get 'pages/faq'
  get 'pages/links'
  get 'home/index'
  devise_for :users

  root to: "home#index"

#This will create a home page link for each method added to Pages Controller.
  PagesController.action_methods.each do |action|
   get "/#{action}", to: "pages##{action}", as: "#{action}_page"
 end

end
