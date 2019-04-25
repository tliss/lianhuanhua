Rails.application.routes.draw do
  get 'welcome/index'

  resources :series do
    resources :books
  end

  get   '/search',    to: 'welcome#search'

  root 'welcome#index'
end
