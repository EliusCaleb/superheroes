Rails.application.routes.draw do
  resources :hero_powers
  resources :hero_powers, only: [:create]
  resources :powers, only:[:show, :update]
  resources :heros, only:[:index, :show]
 
end