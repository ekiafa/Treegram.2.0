Rails.application.routes.draw do
  get '/' => 'home#index'
  resources :users do
    resources :photos
  end 
  resources :users do
    resources :followers
  end 

  
  resources :comments ,only: [:create, :destroy] #allagh
  resources :tags, only: [:create, :destroy]
  get '/log-in' => "sessions#new"
  post '/log-in' => "sessions#create"
  get '/log-out' => "sessions#destroy", as: :log_out
  delete '/users/:user_id/photos/:id(.:format)' =>"photos#destroy",as: :delete_photo
 
end
