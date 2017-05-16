Rails.application.routes.draw do

  resources :pets do
    post 'found', on: :member
    post 'unfound', on: :member
  end

  # post 'pets/:id/found', to: "pets#found"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
