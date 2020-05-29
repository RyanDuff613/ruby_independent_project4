Rails.application.routes.draw do
  # root to: '/'
  resources :products do
    resources :reviews
  end
end
