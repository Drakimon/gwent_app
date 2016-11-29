Rails.application.routes.draw do
  resources :users
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  resources :deck_cards
  resources :decks
  resources :cards
  get 'welcome/index'

  root 'welcome#index'
end
