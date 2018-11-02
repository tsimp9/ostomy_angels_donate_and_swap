Rails.application.routes.draw do
  get 'supplies_available/index'
  get 'supplies_available/show'
  get 'supplies_available/new'
  get 'supplies_available/create'
  get 'supplies_available/edit'
  get 'supplies_available/destroy'
  get 'supplies_needed/index'
  get 'supplies_needed/show'
  get 'supplies_needed/new'
  get 'supplies_needed/create'
  get 'supplies_needed/edit'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/faq'
  get 'pages/links'
  get 'home/index'
      devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
    

  root to: "home#index"

#This will create a home page link for each method added to Pages Controller.
  PagesController.action_methods.each do |action|
   get "/#{action}", to: "pages##{action}", as: "#{action}_page"
 end

end
