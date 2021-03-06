Rails.application.routes.draw do

  root 'users#signup'
  
  resources :models
  resources :enrollments
  resources :instructors
  resources :courses
  resources :subjects
  resources :users
  
  get 'sessions/new'
  get  'course_list',    to: 'courses#index'
  get  'subject_list',    to: 'subjects#index'
  get  'instructor_list',    to: 'instructors#index'
  get  '/signup',  to: 'users#signup'
  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/my_course',  to: 'sessions#my_course'
  get '/search_course', to: 'courses#search'
  get '/search_courses', to: 'courses#search_courses'
  get '/enroll', to: 'enrollments#enroll'
end
