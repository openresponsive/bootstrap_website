Rails.application.routes.draw do

  resources :casestudies


  resources :partners


  resources :products


  get "static_site/home"

  get "static_site/about"

  get "static_site/contact"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  mount BootstrapWebsite::Engine => "/bootstrap_website"
end
