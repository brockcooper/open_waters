Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  get 'welcome/index'
  resources :users do
    resources :fishing_reports
  end
  root to: 'welcome#index'
end
