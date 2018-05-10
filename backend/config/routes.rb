Rails.application.routes.draw do
  get 'restaurants/index'

  get 'restaurants/update'

  get 'restaurants/create'

  get 'musics/index'

  get 'musics/update'

  get 'musics/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
  namespace :v1 do
    resources :bars, only: [:index, :update, :create]
  end
end

  namespace :api do
  namespace :v1 do
    resources :events, only: [:index, :update, :create]
  end
end

namespace :api do
namespace :v1 do
  resources :musics, only: [:index, :update, :create]
end
end

namespace :api do
namespace :v1 do
  resources :restaurants, only: [:index, :update, :create]
end
end

  namespace :api do
  namespace :v1 do
    resources :users, only: [:index, :update]
  end
 end
end
