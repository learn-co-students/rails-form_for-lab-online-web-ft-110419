Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :school_classes, only: [:index, :create, :show, :new, :edit, :update]
  resources :students, only: [:index, :create, :show, :new, :edit, :update]
end
