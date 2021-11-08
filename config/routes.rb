Rails.application.routes.draw do
  devise_for :users,
             controllers: {
                 sessions: 'api/v1/users/sessions',
                 registrations: 'api/v1/users/registrations'
             }
  get '/member-data', to: 'members#show'
  namespace :api do
    namespace :v1 do

      resources :personajes
      resources :peliculas
      resources :generos
    end
  end
end
