Rails.application.routes.draw do
  resources :posts do
    post :confirm, on: :collection
    post :confirm, on: :member
  end
end
