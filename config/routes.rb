Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  resources :deck_cards
  resources :decks
  resources :cards
  resources :users
end
