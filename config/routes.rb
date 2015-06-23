Rails.application.routes.draw do
  
  
  resources :people, only: [:index, :create, :show, :update, :destroy] do
    collection do
      get "deleted_people"
      get "active"
    end
  end

end
