Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/params_game_path" => "params_game_app#params_game_action"
  end

  namespace :api do
    get "/params_number_path" => "params_game_app#params_number_action"
  end
end
