Rails.application.routes.draw do

  get 'chatbot/show' => 'chatbot#show'

  root :to => 'pages#home'
  get '/shop/:gender' => 'pages#shop', :as => 'shop'
  get '/shop/:gender/:category' => 'pages#category', :as => 'products_category'

  get '/products/gender/:gender' => 'products#search'

  get'/wishlist' => 'users#wishlist', :as => 'wishlist'

  resources :users
  resources :categories
  resources :products do
    resources :favourites
    resources :reviews
    resources :images
    resources :line_items
  end

  delete '/line_items/:id' => 'line_items#destroy', :as => 'lineitem_destroy'

  resources :orders do
    resources :charges
  end

  get '/thanks' => 'charges#thanks'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
