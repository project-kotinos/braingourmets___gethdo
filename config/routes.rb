# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  scope '(:locale)' do
    root 'home#index'
  end
end
