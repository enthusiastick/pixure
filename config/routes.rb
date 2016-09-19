Rails.application.routes.draw do
  root "posts#index"

  resources :posts, except: [:destroy, :edit, :update]
end
