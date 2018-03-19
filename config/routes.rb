Rails.application.routes.draw do

  get 'fortune2008/index', to: 'fortune2008#index'
  get 'fortune2009/index', to: 'fortune2009#index'
  get 'fortune2010/index', to: 'fortune2010#index'
  get 'fortune2011/index', to: 'fortune2011#index'
  get 'fortune2012/index', to: 'fortune2012#index'
  get 'fortune2013/index', to: 'fortune2013#index'
  get 'fortune2014/index', to: 'fortune2014#index'
  get 'fortune2015/index', to: 'fortune2015#index'
  get 'fortune2016/index', to: 'fortune2016#index'
  get 'fortune2017/index', to: 'fortune2017#index'
  get 'fortune2017/:id', to: 'fortune2017#show'
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
