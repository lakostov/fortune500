Rails.application.routes.draw do

  get 'search/index'

  get 'search/company'

  get 'search/sector'

  get 'search/industry'

  get 'search/state'

  get 'sessions/new'

  resources :users
  resources :account_activations, only: [:edit]
  get '/states/', to: 'states#index'
  get 'states/:id', to: 'states#show'
  get '/industry/', to: 'industry#index'
  get '/industry/:id', to: 'industry#show'
  get '/sector/', to: 'sector#index'
  get '/sector/:id', to: 'sector#show'
  get '/fortune2008/', to: 'fortune2008#index'
  get '/fortune2009/', to: 'fortune2009#index'
  get '/fortune2010/', to: 'fortune2010#index'
  get '/fortune2011/', to: 'fortune2011#index'
  get '/fortune2012/', to: 'fortune2012#index'
  get '/fortune2013/', to: 'fortune2013#index'
  get '/fortune2014/', to: 'fortune2014#index'
  get '/fortune2015/', to: 'fortune2015#index'
  get '/fortune2016/', to: 'fortune2016#index'
  get '/fortune2017/', to: 'fortune2017#index'
  get '/fortune2017/:id', to: 'fortune2017#show'
  get '/sector/companies/:id', to: 'sector#companies'
  post '/search/', to: 'search#index'
  get '/search/company/', to: 'search#company'
  get '/search/sector/', to: 'search#sector'
  get '/search/industry/', to: 'search#industry'
  get '/search/state/', to: 'search#state'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
