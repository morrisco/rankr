Euchre::Application.routes.draw do
  resources :outcomes
  
  root 'welcome#index'
end
