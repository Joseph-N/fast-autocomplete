Rails.application.routes.draw do
  mount Soulmate::Server, :at => "/autocomplete"

  resources :verbs
  resources :nouns

  root 'home#index'
end
