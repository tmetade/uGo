Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

    resources :applications
  	scope '/applications' do
  		get '/' => 'applications#index'
  		get '/new' => 'applications#new'
  		post '/new' => 'applications#create'
      get '/:id' => 'applications#show'
  	end
  end

