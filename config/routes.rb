Rails.application.routes.draw do
  devise_for :users
  get 'home/index' => "home#index"
  get 'home/:id/show' => "home#show"
  
  post 'home/:product_id/like' => "like#create"
  post 'home/:product_id/unlike' => "like#destroy"
  
  #likeはhomeに移植したほうがいい？
  
  get 'like' => "like#index"
  
end
