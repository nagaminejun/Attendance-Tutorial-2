Rails.application.routes.draw do

  root 'static_pages#top'
  get '/signup', to: 'users#new'
  resources :users #この1行を記述するだけで全てのリソースを扱える./users/1というURLを有効にする
  
end