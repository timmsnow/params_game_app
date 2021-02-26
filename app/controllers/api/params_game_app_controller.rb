class Api::ParamsGameAppController < ApplicationController
  def params_game_action
    input_name = params["my_name"]
    if input_name[0].downcase == "a"
      @output_message = "Your first name is #{input_name}, and it begins with the letter #{input_name[0]}!"
    else
      @output_message = "my name is #{input_name}"
    end
    render "params_game_app.json.jb"
  end

  def params_number_action
    x = 38
    guess = params["guess"]
    if guess.to_i < x
      @message = "#{guess} is too low... try again!"
    elsif guess.to_i > x
      @message = "#{guess} is too high! try again!"
    elsif guess.to_i == x
      @message = "YESSSSSS! #{guess} is exactly right!!"
    else
      @message = "naw dude."
    end
    render "params_number.json.jb"
  end
end
