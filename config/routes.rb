Rails.application.routes.draw do
  root 'static_pages#home'

  devise_for :users, controllers: {registrations: 'registrations', sessions: 'users/sessions'} do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # GET routes
  get '/about', to: 'static_pages#about'
  get '/registration', to: 'static_pages#registration'
  get '/speakers', to: 'static_pages#speakers'
  get '/dashboard', to: 'dashboard#index'
  get '/awareness', to: 'dashboard#awareness'
  get '/transactions/tokens', to: 'transactions#tokens'
  get '/transactions/tokens/sent', to: 'transactions#sent_tokens'
  get 'transactions/tokens/received', to: 'transactions#received_tokens'
  get '/transactions/coins', to: 'transactions#coins'
  get '/transactions/coins/sent', to: 'transactions#sent_coins'
  get 'transactions/coins/received', to: 'transactions#received_coins'
  get '/add_friend', to: 'friendships#add_friend'

  resources :users do
    resources :friendships
  end
  resources :transactions
end
