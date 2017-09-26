# frozen_string_literal: true

Rails.application.routes.draw do
  resources :fan_comments
  resources :reviews
  resources :authors
  resources :users
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'hello/index', to: 'hello#index'
  get 'hello/view'
  get 'hello/list'
  get 'hello/app_var'

  get 'view/keyword'
  post 'keyword/search'

  get 'view/form_tag'
  post 'view/create'

  get 'view/form_for'

  get 'view/field'
  get 'view/html5'

  get 'view/select'
  get 'view/col_select'
  get 'view/col_select2'
  get 'view/group_select'
  get 'view/group_select2'

  get 'view/select_tag'
  get 'view/select_tag2'
end
