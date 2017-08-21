Rails.application.routes.draw do
  get 'welcome/index'

  resources :papers do
  	resources :questions
  end
end
