Rails.application.routes.draw do
  root 'application#hello'
  resources :rider_applications
  # get 'greetings/hello'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end