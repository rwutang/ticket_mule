TicketMule::Application.routes.draw do

  # User
  devise_for :users do
    get '/signin' => 'devise/sessions#new'
  end

  # Dashboard
  get 'dashboard' => 'dashboard#index'

  # Root path
  root :to => "dashboard#index"

end
