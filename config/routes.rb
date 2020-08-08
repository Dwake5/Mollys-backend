Rails.application.routes.draw do
  root 'welcome#index'
  resources :comments
  resources :users
  resources :news
  # resources :images

  post '/signin', to: 'users#signin'
  get '/validate', to: 'users#validate'

  post '/postReview', to: 'comments#create'
  get '/fetchReviews', to: 'comments#reviewsList'

  # post '/postPhoto', to: 'image#create'
end
