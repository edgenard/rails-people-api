Rails.application.routes.draw do
  
  
  resources :people, only: [:index, :create, :show, :update, :destroy]

end
