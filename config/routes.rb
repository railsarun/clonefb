Rails.application.routes.draw do
  get 'deshboard/index'
  get 'deshboard/show'
  get 'deshboard/new'
  get 'deshboard/edit'
  get 'deshboard/delete'
  devise_for :users
  get 'home/index'
  root to: "home#index"
  resources :users 
 #devise_for :patient_users, :controllers => { :registrations => :registrations }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end