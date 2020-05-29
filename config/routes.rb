Rails.application.routes.draw do
  get 'to_dos/index'
  get 'to_dos/view'
  get 'to_dos/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :to_dos
  root 'to_dos#index'
end
