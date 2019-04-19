Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  resources :series do
    resources :books
  end

  get   '/search',    to: 'welcome#search'

  root 'welcome#index'
end
