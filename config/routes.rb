Rails.application.routes.draw do
  get 'home/index' => "home#index"
  get 'home/:id/show' => "home#show"
  
  post 'home/:product_id/like' => "like#create"
  post 'home/:product_id/unlike' => "like#destroy"
  
end
