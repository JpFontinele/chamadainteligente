Rails.application.routes.draw do
  root to: "application#version"
  resources :subjects
end
