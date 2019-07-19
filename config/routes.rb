Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get 'home/:id/show' => "home#show"
  
  post 'home/:product_id/like' => "like#create"
  post 'home/:product_id/unlike' => "like#destroy"
  

  get 'like' => "like#index"
  
end
