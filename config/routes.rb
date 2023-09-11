Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations], controllers: {
    sessions: 'devise/sessions'
  }
  
  resources 'dashboards', only: [:index]
  root 'dashboards#index'
end
