Rails.application.routes.draw do
  resources :clotters do
    collection do
      post :confirm
    end
  end
end
