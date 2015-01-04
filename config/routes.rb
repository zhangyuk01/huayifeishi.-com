# -*- coding: utf-8 -*-
Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'


  resources :sorts do
    collection do
      get :front_index
    end
  end





  resources :pages
end
