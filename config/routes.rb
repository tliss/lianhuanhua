Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  resources :series do
    resources :books
  end

  root 'welcome#index'
end
