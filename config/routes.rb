Rails.application.routes.draw do
  get 'home/index' => "home#index"
  get 'home/:id/show' => "home#show"

end
