Rails.application.routes.draw do
  # root to:
  get '/', to: 'products#landing'
  resources :products do
    resources :reviews
  end
end
