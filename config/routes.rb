Rails.application.routes.draw do
  resources :places do
    resources :routes
  end
end
