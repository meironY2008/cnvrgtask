Rails.application.routes.draw do
  resources :driversandcars do
    resources :getdrivercar
  end
  resources :drivers
  resources :cars
  root "articles#index"
  # get 'driversandcars/getdrivercar' to: "driversandcars#getdrivercar"

  resources :articles
end
