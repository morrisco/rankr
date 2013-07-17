Euchre::Application.routes.draw do
  resources :outcomes
  resources :teams
  resources :players
  
  root 'welcome#index'
end
