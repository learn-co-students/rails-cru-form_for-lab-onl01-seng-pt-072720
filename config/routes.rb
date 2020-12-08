Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :artists, only: [:index, :show, :new, :create, :edit, :update]
  resource :songs, only: [:index, :show, :new, :create, :edit, :update]
  resource :genres, only: [:index, :show, :new, :create, :edit, :update]
end
