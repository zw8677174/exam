Rails.application.routes.draw do
  resources :papers do
  	resources :questions
  end
end
