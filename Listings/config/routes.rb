Rails.application.routes.draw do
  # get 'accounts/login'

  # get 'accounts/logout'

  get 'users/index'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'pictures/index'

  get 'pictures/new'

  get 'pictures/create'

  get 'pictures/edit'

  get 'pictures/update'

  get 'pictures/destroy'

  root 'listings#index'
  get 'login' => 'accounts#login', as: :login
  get 'logout' => 'accounts#logout', as: :logout
  post 'authenticate' => 'accounts#authenticate', as: :authenticate

  resources :users do
    resources :listings do
      resources :features
      resources :pictures
    end
  end

end
