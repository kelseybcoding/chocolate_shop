Rails.application.routes.draw do
  devise_for :customers
  root to: 'chocolates#index'
  get '/chocolate' => 'chocolates#index'

  get '/chocolates/new' => 'chocolates#new'
  post '/chocolates' => 'chocolates#create'

  get '/chocolates/:id' => 'chocolates#show'

  get '/chocolates/:id/edit' => 'chocolates#edit'
  patch '/chocolates/:id' => 'chocolates#update'

  delete '/chocolates/:id' => 'chocolates#destroy'
end
