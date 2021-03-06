Rails.application.routes.draw do
  devise_for :users
  get 'docs/index'
  get 'docs/show'
  get 'docs/new'
  get 'docs/create'
  get 'docs/edit'
  get 'docs/update'
  get 'docs/destroy'
  get 'welcome/index'
  resources :docs

  authenticated :user do
    root 'docs#index', as: 'authenticated_root'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
