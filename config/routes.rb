Rails.application.routes.draw do
  
  resources :posts do
    resources :comments,only: [:create]
  end


 # get "liked/:id", to: "likes#show", :as => "like"
  resources :likes, only:[:index, :destroy]

  get 'deshboard/index'
  get 'deshboard/show'
  get 'deshboard/new'
  get 'deshboard/edit'
  get 'deshboard/delete'
  devise_for :users
  get 'home/index'
  root to: "home#index"
  resources :users 
  #resources :likes,only:[:create,:destroy]
  
  #likes POST   /likes(.:format)                      likes#create

                                                        
end