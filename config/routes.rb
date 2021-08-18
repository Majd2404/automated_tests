Rails.application.routes.draw do
  #get 'words', to: 'words#index'
  resources :words, only: %i[index new create]

end
