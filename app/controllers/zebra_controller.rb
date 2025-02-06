class ZebraController < ApplicationController
  def home
    render({:template => "game_templates/home"})
  end

  def rock
    @random_move = ["rock", "paper", "scissors"].sample
    if @random_move == "paper"
      @result = "We lost!"
    elsif @random_move == "scissors"
      @result = "We won!"
    else 
      @result = "We tied!"
    end
    render({:template => "game_templates/play_rock"})
  end

  def paper
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "scissors"
      @result = "We lost!"
    elsif @random_move == "rock"
      @result = "We won!"
    else 
      @result = "We tied!"
    end
    render({:template => "game_templates/play_paper"})
  end

  def scissors
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "rock"
      @result = "We lost!"
    elsif @random_move == "paper"
      @result = "We won!"
    else 
      @result = "We tied!"
    end

    render({:template => "game_templates/play_scissors"})
  end

end  
