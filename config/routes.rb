Rails.application.routes.draw do

root 'bookers#index'

	resources :bookers

end
