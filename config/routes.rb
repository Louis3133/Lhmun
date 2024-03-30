Rails.application.routes.draw do
  resources :resumesecs
  namespace :admin do
      resources :conferences
      resources :resumes
      resources :teams

      root to: "conferences#index"
    end
  resources :conferences
  resources :resumes
  resources :teams
  resources :legals
  resources :comits
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get '/mentions_legales', to: 'legal#mentions_legales'

  get '/commits', to: 'comits#commites'

  # Defines the root path route ("/")
  root "resumes#index"
end
