Rails.application.routes.draw do


  resources :restaurants do
    get 'top', on: :collection # get 'restaurants/top', to: 'restaurants#top'
    get 'chef', on: :member # get 'restaurants/:id/chef', to: 'restaurants#chef'
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]



  root to: 'restaurants#index'
end
