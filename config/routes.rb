Rails.application.routes.draw do
  get '/', to: 'products#landing'
  resources :products do
    resources :reviews
  end
end
