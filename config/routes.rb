Scrumly::Application.routes.draw do

  resources :projects do
    resources :stories
    resources :sprints
  end

  resources :stories do
    resources :tasks
    resources :acceptance_criteria
  end

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end
