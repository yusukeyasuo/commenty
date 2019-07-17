Rails.application.routes.draw do
  get 'home/index' => "home#index"
  get 'home/:id/show' => "home#show"
  
  post 'home/:product_id/like' => "like#create"
  post 'home/:product_id/unlike' => "like#destroy"
  
  #likeはhomeに移植したほうがいい？
  
  get 'home/:user_id/favorite' => "like#favorite"
  
end
