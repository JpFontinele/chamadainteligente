Rails.application.routes.draw do
  root to: "application#version"
  resources :subjects
  resources :user
  resources :courses
  resources :attendance
end
