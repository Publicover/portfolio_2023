Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations], controllers: {
    sessions: 'devise/sessions'
  }
  
  resources 'apps'
  resources 'clients'
  resources 'dashboards', only: [:index] do 
    collection do 
      get 'admin_dashboard', as: 'admin'
    end
  end
  resources 'gigs'
  resources 'skills'

  get '/tagged', to: "apps#tagged", as: :tagged

  root 'dashboards#index'
end
