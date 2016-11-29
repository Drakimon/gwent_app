Rails.application.routes.draw do
  resources :deck_cards
  resources :decks
  resources :cards
  get 'welcome/index'

  root 'welcome#index'
end
