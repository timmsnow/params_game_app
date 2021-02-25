class Api::ParamsGameAppController < ApplicationController
  def params_game_action
    input_name = params["my_name"]
    @output_message = "my name is #{input_name}"

    render "params_game_app.json.jb"
  end
end
