# -*- encoding : utf-8 -*-
RailsWebPrototype::Application.routes.draw do
  root :to => 'home#index'
  get "/home/index"
  devise_for :users
  devise_for :administrators
end
