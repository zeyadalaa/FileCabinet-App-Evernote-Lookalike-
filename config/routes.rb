Rails.application.routes.draw do
  get 'docs/index'
  get 'docs/show'
  get 'docs/new'
  get 'docs/create'
  get 'docs/edit'
  get 'docs/update'
  get 'docs/destroy'
  get 'welcome/index'
  resources :docs

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
