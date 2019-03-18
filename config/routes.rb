# CURRENT LAB

Rails.application.routes.draw do

  resources :students, :school_classes, only: [:new]
  get '/students/:id/edit', to: 'students#edit', as: 'edit_student'
  get '/students/:id', to: 'students#show', as: 'student'
  post '/students', to: 'students#create'
  patch '/students/:id', to: 'students#update'

  get '/school_classes/:id/edit', to: 'school_classes#edit', as: 'edit_school_class'
  get '/school_classes/:id', to: 'school_classes#show', as: 'school_class'
  post '/school_classes', to: 'school_classes#create'
  patch '/school_classes/:id', to: 'school_classes#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
