Rails.application.routes.draw do
  resources :reservations
  resources :supplies do
    member do
      get "reserve"
      get "unreserve"
    end
  end
  get 'home/index'
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  root to: "home#index"

  get "profile", to: "profile#show"
  put "profile", to: "profile#update"
  patch "profile", to: "profile#update"
  get "profile/edit", to: "profile#edit"

  get 'pages/about'
  get 'pages/contact'
  get 'pages/faq'
  get 'pages/links'  

#This will create a home page link for each method added to Pages Controller.
  PagesController.action_methods.each do |action|
   get "/#{action}", to: "pages##{action}", as: "#{action}_page"
 end

end

