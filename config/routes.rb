Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  scope '/api' do
  	scope '/applications' do
  		get '/' => 'applications#index'
  		get '/new' => 'applications#new'
  		post '/' => 'applications#create'
  	end
  end
end
