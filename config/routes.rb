Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # next line added 19 may 17
  root 'places#index'
  # next line added 22 may 17
  resources :places
end
