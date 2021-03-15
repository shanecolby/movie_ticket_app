Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # get "/movies" => "movies#index"
    root to: "movies#index"
    resources :movies
    resources :auditoriums
    resources :sales
    resources :theaters
    resources :showings
  end
end
