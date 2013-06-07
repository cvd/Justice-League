Heroes::Application.routes.draw do
  resources :heroes
  root 'heroes#index'
end
