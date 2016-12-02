Rails.application.routes.draw do
  resources :supervisors
  # get 'signup/supervisor'

  # get 'signup/requester'

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

    resources :recommendation
    scope '/recommendation' do
      get '/' => 'recommendation#index'
      get '/new' => 'recommendation#new'
      post '/new' => 'recommendation#create'
      get '/:id' => 'recommendation#show'
    end

    resources :requesters
      scope '/requesters' do
        get '/new' => 'requesters#new'
        post '/new' => 'requesters#create'
    end

  end

