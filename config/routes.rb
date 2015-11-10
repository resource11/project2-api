Rails.application.routes.draw do

  post '/register' => 'auth#register'
  # patch '/confirm' => 'auth#confirm'
  post '/login' => 'auth#login'
  delete '/logout/:id' => 'auth#logout'

  resources :users, except: [:new, :edit]

  resources :books, except: [:new, :edit]

  #routes for bikes
  resources :bikes, except: [:new, :edit]

  resources :profiles, except: [:new, :edit]

  resources :favorites, except: [:new, :edit]
end
