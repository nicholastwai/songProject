Rails.application.routes.draw do
  root 'welcome#index'
  get 'access_tokens', to: 'access_tokens#create'
  resources :days, :songs, :calendars 
  get '/user/index', to: 'user#index'
end
