Rails.application.routes.draw do
  root 'articles#index'
  
  resources :articles do
    resources :comments, on: :collection 
  end
end
