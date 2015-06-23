Rails.application.routes.draw do
  
  get "/",  :to => redirect("root")
  
  resources :people, only: [:index, :create, :show, :update, :destroy] do
    collection do
      get "deleted_people"
      get "active"
    end
    
    member do
      post "restore"
    end
    
    
  end

end
