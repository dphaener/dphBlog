DphBlog::Application.routes.draw do
  get "welcome/index"
  get "log_out" => "sessions#destroy", :as => "log_out"
	get "log_in" => "sessions#new", :as => "log_in"
	get "sign_up" => "users#new", :as => "sign_up"
	root :to => "welcome#index"
	resources :users
	resources :sessions
end
