TicketMule::Application.routes.draw do

  # User
  devise_for :users, path_names: { sign_in: 'signin', sign_out: 'signout' }

  # Dashboard
  get 'dashboard' => 'dashboard#index'

  # Root path
  root :to => "dashboard#index"

end
