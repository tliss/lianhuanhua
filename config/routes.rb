Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  resources :books

  resources :series

  root 'welcome#index'
end
