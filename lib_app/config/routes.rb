Rails.application.routes.draw do
root to: "users#index"

get "/users", to: "users#index", as: "users"
get "/users/new", to: "users#new", as: "new_user"
post "/users", to: "users#create"
get "/users/:id", to: "users#show"

#sign_in
get "/sign_in", to: "sessions#new"
post "/sessions", to: "sessions#create"

#libraries
get "/libraries", to: "libraries#index"
get "/libraries/new", to: "libraries#new", as: "new_library"
post "/libraries", to: "libraries#create"
get "/libraries/:id", to: "libraries#show"
get "/libraries/edit/:id", to: "libraries#edit", as: "edit_library"
patch "/libraries/edit/:id", to: "libraries#update"

#libusers
get "/users/:user_id/libraries", to: "library_users#index", as: "user_libraries"
post "/libraries/:library_id/users", to: "library_users#create", as: "library_users"

end
