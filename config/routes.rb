Rails.application.routes.draw do
  get 'welcome/index'
  resources :papers do
  	resources :questions do
			resources :answers
		end
		resources :examinations
  end
	resources :wens
	root 'papers#index'
end
