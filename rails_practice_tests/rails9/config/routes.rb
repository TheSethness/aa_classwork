

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :create, :new] do 
    resources :goals, only: [:create]
  end
  resource :session, only: [:new, :create, :destroy]

  resources :goals, only: [:destroy]

end
