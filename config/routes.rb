Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
end
