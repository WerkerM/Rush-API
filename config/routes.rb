Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :courses
      resources :customers
      resources :studios
      post '/signup', to: 'customers#create'
      post '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'
    end
  end

end
