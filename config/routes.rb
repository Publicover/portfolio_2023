Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations], controllers: {
    sessions: 'devise/sessions'
  }
  
  resources 'dashboards', only: [:index] do 
    collection do 
      get 'admin_dashboard', as: 'admin'
    end
  end
  resources 'skills'
  
  root 'dashboards#index'
end
