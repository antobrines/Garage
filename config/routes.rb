Rails.application.routes.draw do
  resources :voyages
  resources :marques
  resources :personnes
  resources :voitures
  get 'voitures/immatriculation/:immatriculation', to: 'voitures#immatriculation_show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
