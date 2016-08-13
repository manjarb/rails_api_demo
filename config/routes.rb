require 'api_constraints'

Rails.application.routes.draw do

  mount SabisuRails::Engine => "/sabisu_rails"
  devise_for :users

  namespace :api , defaults: { format: :json },
                               constraints: { subdomain: 'api' }, path: '/' do
    scope module: :v1 ,
                  constraints: ApiConstraints.new(version: 1, default: true) do

      resources :users, :only => [:show, :create, :update, :destroy] do
        # this is the line
        resources :products, :only => [:create, :update, :destroy]
      end
      resources :sessions, :only => [:create, :destroy]
      resources :products, :only => [:show, :index]

    end

  end

end
