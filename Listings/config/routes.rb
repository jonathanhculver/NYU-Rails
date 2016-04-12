Rails.application.routes.draw do
  get 'pictures/index'

  get 'pictures/new'

  get 'pictures/create'

  get 'pictures/edit'

  get 'pictures/update'

  get 'pictures/destroy'

  root 'listings#index'

  resources :listings do
    resources :features
    resources :pictures
  end

end
