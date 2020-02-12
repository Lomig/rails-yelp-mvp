# frozen_string_literal: true

Rails.application.routes.draw do
  get 'reviews/new'
  get 'restaurants/index'
  get 'restaurants/new'
  get 'restaurants/show'
  resources :restaurants, only: %i[index create new show] do
    resources :review, only: %i[new create]
  end
end
