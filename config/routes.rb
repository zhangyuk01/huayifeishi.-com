Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'home/index'
  resources :sorts
  resources :pages
  root 'home#index'
end
