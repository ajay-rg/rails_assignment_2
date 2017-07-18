Rails.application.routes.draw do
  get 'welcome/index'
  resources :employees, :leads, :skills
  root 'welcome#index'
end
