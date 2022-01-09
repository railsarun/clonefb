Rails.application.routes.draw do
  
  resources :posts


  #get "edit_liked/:id", to: "posts#edit_liked", :as => "edit_liked"
  resources :likes,only:[:create,:destroy]

  get 'deshboard/index'
  get 'deshboard/show'
  get 'deshboard/new'
  get 'deshboard/edit'
  get 'deshboard/delete'
  devise_for :users
  get 'home/index'
  root to: "home#index"
  resources :users 
  resources :likes,only:[:create,:destroy]
  

                                                        
end