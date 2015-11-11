Rails.application.routes.draw do

  post '/register' => 'auth#register'
  # patch '/confirm' => 'auth#confirm'
  post '/login' => 'auth#login'
  delete '/logout/:id' => 'auth#logout'

  resources :users, except: [:new, :edit]

  resources :books, except: [:new, :edit]

  #routes for bikes from paperclip lesson
  # resources :bikes, only: [:index, :show, :create, :update]

  resources :bikes, except: [:new, :edit]

  resources :profiles, except: [:new, :edit]

  resources :favorites, except: [:new, :edit]
end

# from paperclip lesson
# Rails.application.routes.draw do
#   resources :movies, only:[:index, :show, :create]
# end
