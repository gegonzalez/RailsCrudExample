Rails.application.routes.draw do
#  get 'products/index'

#  get 'products/new'

# get 'products/create'

# get 'products/edit'

#  get 'products/update'

#  get 'products/destroy'

  resources :products, except: [:show]
  root to: 'products#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
