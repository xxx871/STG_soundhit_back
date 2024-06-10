Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations'
      }

      namespace :auth do
        resources :sessions, only: [:index]
      end
      resource :user, only: [:show]
      resources :notes, only: [:index]
      resources :difficulties, only: [:index]
      resources :genders, only: [:index]
      resources :modes, only: [:index]
    end
  end
end