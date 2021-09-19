Rails.application.routes.draw do
  resources :destinations
  resources :addresses
  resources :locations
  get 'jobs/find_by_category'
  get 'jobs/find_my_jobs'
  get 'jobs/search_jobs'
  resources :jobs 
  devise_for :users, controllers: { sessions: 'users/sessions' }
  get 'upload_cv', to: "cv#upload_cv"
  patch 'upload_cv', to: 'cv#update'
  resources :employement_types
  resources :career_levels
  resources :job_search_titles
  resources :job_categories
  resources :employers
  root 'jobs#index'
  get 'home/index'
  get 'home/about'
  get 'home/cv_tips'
  get 'home/interview_tips'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
