Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  resources :deck_cards
  resources :decks
  resources :cards
  get 'welcome/index'

  root 'welcome#index'
end
