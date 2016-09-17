Rails.application.routes.draw do
  root :to => "places#index"
  resources :places do
    resources :routes
  end
end
