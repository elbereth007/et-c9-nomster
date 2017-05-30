Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # next line added 19 may 17
  root 'places#index'
  # next line added 22 may 17, "do" added 26 may 17
  resources :places do
 # next 2 lines added 26 may 17
    resources :comments, only: :create
  end
  # next  lines added 29 may 17 for user show page
  resources :users, only: :show
end
