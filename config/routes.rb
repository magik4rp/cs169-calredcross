Rails.application.routes.draw do
  get 'authen_accept/accept'

  resources :galleries
  post 'galleries/update', :to => 'galleries#update'
  post 'galleries/add-favorite', :to => 'galleries#addFavorite'
  post 'galleries/add-photo', :to => 'galleries#addPhoto'
  # get 'profile/index'
  post 'profile/update', :to => 'profile#update'
  post 'members/update', :to => 'members#update'
  post 'members/update_hours', :to => 'members#update_hours'
  post 'members/delete', :to => 'members#delete'
  get 'members/show', :to => 'members#show'
  resources :news
  resources :posts
 # devise_for :users
  root to: "home#index"
  resources :calendar, only: [:index]
  resources :profile, only: [:index, :update]
  resources :members, only: [:index]
  devise_for :users, :controllers => { :registrations => "registrations" }
  #devise_for :users, :controllers => { :registrations => "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
