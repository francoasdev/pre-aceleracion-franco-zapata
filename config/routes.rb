Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :personajes
      resources :peliculas
      resources :generos
    end
  end
end
