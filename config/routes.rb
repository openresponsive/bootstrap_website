BootstrapWebsite::Engine.routes.draw do
  devise_for :admin_users, :class_name => "BootstrapWebsite::AdminUser"

  root to: 'static_site#home'

  resources :teams


  resources :services


  resources :portfolios


  resources :clients


  resources :careers


  resources :blogs


end
