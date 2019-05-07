Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :series, shallow: true do
    resources :books, shallow: true do
      resources :pages
    end
  end

  get   '/search',    to: 'welcome#search'

  root 'welcome#index'
end
