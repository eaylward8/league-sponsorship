Rails.application.routes.draw do
  resources :leagues, only: %i[index new create] do
    get 'find', on: :collection
  end
  root to: 'leagues#index'
end
