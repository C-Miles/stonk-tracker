# frozen_string_literal: true

Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'my_friends', to: 'users#my_friends'
end
