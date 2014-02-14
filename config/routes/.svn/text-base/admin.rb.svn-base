# -*- encoding : utf-8 -*-
RailsWebPrototype::Application.routes.draw do 
  match '/admin' => 'admin#index'
  match '/admin/index' => 'admin#index'
  get 'admin/logout'
  match '/admin/logout' => 'admin#logout'
  namespace :admin do
    root :to => 'administrators#index'
    resources :administrators
    resources :permissions
    resources :events
  end
end
