Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get 'home/:id/show' => "home#show"
  
  post 'like/:product_id/create' => "like#create"
  post 'like/:product_id/destroy' => "like#destroy"
  
  
  
  

  get 'like' => "like#index"
  
end
