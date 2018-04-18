Rails.application.routes.draw do
  resources :dovetests
  get 'home/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  authenticated :user do
  	root to: 'home#index'
  end

  unauthenticated :user do
  	devise_scope :user do
  		root to: 'devise/sessions#new'
  		end
  	end
end
