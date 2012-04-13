Fraudnumbers::Application.routes.draw do
  get "admin" => "offenders#new", :as => "admin"
	get "home" => "welcome#index", :as => "home"

	get "offenders" => "welcome#offenders", :as => "offenders"

	root :to => "welcome#index"

	resources :offenders
end
