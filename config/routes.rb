Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:new, :index, :show, :create, :edit, :update]
  resources :school_classes, only: [:new, :index, :show, :create, :edit, :update]
end
