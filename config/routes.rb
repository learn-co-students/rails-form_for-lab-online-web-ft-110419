Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students
  resources :school_classes
  # resources creates all of the REST routes. We didn't say 'only' so now these two resources
  # created every single REST route.
end
