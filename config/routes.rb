DphBlog::Application.routes.draw do
  get "welcome/index"
  get "log_out" => "sessions#destroy", :as => "log_out"
	get "log_in" => "sessions#new", :as => "log_in"
	get "sign_up" => "users#new", :as => "sign_up"
	get "admin" => "admin#index", :as => "admin"
	get "new_post" => "posts#new", :as => "new_post"
	get "delete_user" => "admin#destroy", :as => "delete_user"
	root :to => "welcome#index"
	resources :users
	resources :sessions
	resources :posts do
		resources :comments
	end
	resources :admin
end
