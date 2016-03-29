Rails.application.routes.draw do
  root 'listings#index'

  resources :listings do
  end

end
