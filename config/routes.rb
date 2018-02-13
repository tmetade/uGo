Rails.application.routes.draw do
  # get 'signup/supervisor'

  devise_for :users, :controllers => {:registrations => 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

    resources :applications
  	scope '/applications' do
  		get '/' => 'applications#index'
  		get '/new' => 'applications#new'
  		post '/new' => 'applications#create'
      get '/:id' => 'applications#show'
  	end

    resources :recommendations
    scope '/recommendations' do
      get '/' => 'recommendations#index'
      get '/new' => 'recommendations#new'
      post '/new' => 'recommendations#create'
      get '/:id' => 'recommendations#show'
    end

    resources :requesters
      scope '/requesters' do
        get '/new' => 'requesters#new'
        post '/new' => 'requesters#create'
        get '/application/:id' => 'applications#requester_show'
        get '/delete_notification/:id' => 'requesters#delete_notification'

    end

    resources :supervisors
    scope '/supervisors' do
      get '/new' => 'supervisors#new'
      post '/new' => 'supervisors#create'
      get '/application/:id' => 'applications#supervisor_show'
      get '/delete_notification/:id' => 'supervisors#delete_notification'
    end

  end
