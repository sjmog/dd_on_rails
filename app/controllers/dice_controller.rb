class DiceController < ApplicationController
  include Dice

  # get /dice
  def show_dice
  end

  # post /roll
  def roll
  	@die = Dice::D.new(params[:d])
  end

end