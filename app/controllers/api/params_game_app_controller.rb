class Api::ParamsGameAppController < ApplicationController
  def params_game_app
    input_name = params["my_name"]
    output_message = "my name is #{my_name}"

    render "params_game.json.jb"
  end
end
