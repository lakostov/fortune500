Rails.application.routes.draw do

  get 'error/not_found'

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'subscribtions/index'

  resources :plans

  get 'sessions/new'
  resources :password_resets, only: [:new, :create, :edit, :update]
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
  get '/api/fortune2017/:id', to: 'api#fortune2017'
  get '/api/fortune2017/', to: 'api#fortune2017'
  get '/api/fortune2016/:id', to: 'api#fortune2016'
  get '/api/fortune2016/', to: 'api#fortune2016'
  get '/api/fortune2015/:id', to: 'api#fortune2015'
  get '/api/fortune2015/', to: 'api#fortune2015'
  get '/api/fortune2014/:id', to: 'api#fortune2014'
  get '/api/fortune2014/', to: 'api#fortune2014'
  get '/api/fortune2013/:id', to: 'api#fortune2013'
  get '/api/fortune2013/', to: 'api#fortune2013'
  get '/api/fortune2012/:id', to: 'api#fortune2012'
  get '/api/fortune2012/', to: 'api#fortune2012'
  get '/api/fortune2011/:id', to: 'api#fortune2011'
  get '/api/fortune2011/', to: 'api#fortune2011'
  get '/api/fortune2010/:id', to: 'api#fortune2010'
  get '/api/fortune2010/', to: 'api#fortune2010'
  get '/api/fortune2009/:id', to: 'api#fortune2009'
  get '/api/fortune2009/', to: 'api#fortune2009'
  get '/api/fortune2008/:id', to: 'api#fortune2008'
  get '/api/fortune2008/', to: 'api#fortune2008'
  get '/api/sectors/:id', to: 'api#sectors'
  get '/api/sectors/', to: 'api#sectors'
  get '/api/industries/:id', to: 'api#industries'
  get '/api/industries/', to: 'api#industries'
  get '/api/states/:id', to: 'api#states'
  get '/api/states/', to: 'api#states'
  get '/subscribtions/', to: 'subscribtions#index'
  get '/subscribtions/plans/:id', to: 'subscribtions#plans'
  post '/subscribtions/:id', to: 'subscribtions#create'
  root 'welcome#index'

  match '*a', :to => 'error#not_found', via: :get

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
