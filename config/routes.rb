Rails.application.routes.draw do
  root to: 'clotters#index'
  resources :clotters do
    collection do
      post :confirm
    end
  end
end
