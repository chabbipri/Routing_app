Rails.application.routes.draw do

namespace :admin do 
  get 'dashboard/main'
  get 'dashboard/user'
  get 'dashboard/blog'
end 	


  get 'about' , to: 'pages#about'
  get 'legend/abc/lead' , to: 'pages#contact' , as: 'lead'

  resources :blogs
  resources :posts

  get 'posts/*missing' , to: 'posts#missing'
   
  get 'pages/:else/:another_one' , to: 'pages#something' 

  root to: 'pages#home'
end
