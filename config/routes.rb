Rails.application.routes.draw do
  resources :locations
  get 'jobs/find_by_category'
  resources :jobs 
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :employement_types
  resources :career_levels
  resources :job_search_titles
  resources :job_categories
  resources :employers
  root 'jobs#index'
  get 'home/index'
  get 'home/about'
  get 'home/cv_tips'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
