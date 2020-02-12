# frozen_string_literal: true

Rails.application.routes.draw do
  root "restaurants#root"
  resources :restaurants, only: %i[index create new show] do
    resources :reviews, only: %i[new create]
  end
end
