Rails.application.routes.draw do
  resources :users do
    resources :questions
    resources :papers
  end
  resources :wens

end
