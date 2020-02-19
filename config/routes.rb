Rails.application.routes.draw do
  resources :tags
  resources :genres
  resources :musics
  root 'musics#index'
end
