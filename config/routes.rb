Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  #ログイン機能
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users do #この1行を記述するだけで全てのリソースを扱える./users/1というURLを有効にする
    member do
      get 'edit_basic_info'
      patch 'update_basic_info'
    end
  end
end
