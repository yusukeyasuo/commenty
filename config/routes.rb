Rails.application.routes.draw do
  get 'home/index' => "home#index"
  get 'home/1/show' => "home#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
