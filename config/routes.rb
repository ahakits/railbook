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

  get 'view/dat_select'

  get 'view/col_radio'

  get 'view/fields'

  get 'view/simple_format'
  get 'view/truncate'
  get 'view/excerpt'
  get 'view/highlight'
  get 'view/conc'
  get 'view/sanitize'
  get 'view/format'
  get 'view/number_to'
  get 'view/datetime'

  get 'view/link'
  get 'view/urlfor'
  get 'view/new'
  get 'member/login'
  get 'view/linkif'
  get 'view/current'
  get 'view/mailto'

  get 'view/image_tag'
  get 'view/audio'
  get 'view/video'
  get 'view/path'

  get 'view/capture'
  get 'view/content_tag'

  get 'view/helper'
  get 'view/helper2'
  get 'view/helper3'

  get 'view/multi'
  get 'view/relation'
  get 'view/download'
  get 'view/quest'
  get 'view/nest'

  get 'view/partial_basic'
  get 'view/partial_param'
end
