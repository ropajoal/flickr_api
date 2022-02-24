Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/static_pages', to: 'static_pages#show'
  root 'static_pages#show'
end
