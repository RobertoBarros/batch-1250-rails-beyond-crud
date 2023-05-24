Rails.application.routes.draw do

  resources :restaurants do
    resources :reviews, only: %i[new create]

    get :top, on: :collection
    get :chef, on: :member
  end

  resources :reviews, only: :destroy




end
