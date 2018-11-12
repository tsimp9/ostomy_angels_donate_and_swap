Rails.application.routes.draw do
  get 'shipping_addresses/new'
  get 'shipping_addresses/create'
  get 'shipping_addresses/edit'
  get 'shipping_addresses/update'
  get 'shipping_addresses/destroy'
  get 'shipping_addresses/show'
  get 'shipping_addresses/index'
  resources :reservations
  resources :supplies do
    member do
      get "reserve"
      get "unreserve"
    end
  end
  resources :shipping_addresses
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

