Rails.application.routes.draw do
  root to: "application#version"
  resources :subjects
  resources :user
  resources :courses
  resources :attendance
  resources :student_attendance
  resources :student_courses
  resources :teacher
end
