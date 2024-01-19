Rails.application.routes.draw do
  resources :projects
  resources :courses
  root 'welcome#index'

  resources :students
  resources :blogs

  # namespace :admin do
  #   resources :students
  # end

  scope :admin do
    resources :students
  end
end
