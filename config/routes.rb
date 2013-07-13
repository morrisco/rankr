Euchre::Application.routes.draw do
  resources :outcomes
  resources :teams
  
  root 'welcome#index'
end
