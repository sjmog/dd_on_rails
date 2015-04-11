require 'dice'
require 'rails_helper'
require 'spec_helper'

class DiceWorld
  include Dice

  attr_reader :die

  def initialize n
  	@die = D.new n
  end

end

describe DiceWorld do

  Dice::D20.each do | dX |
  	let(dX) { described_class.new(dX).die }
  end

  def d_to_n dX
  	dX.to_s.scan(/\d+/)[0].to_i
  end


  it 'should be initialized with n sides' do
  	Dice::D20.each do | dX |
  	  expect((eval dX.to_s).d).to eq d_to_n dX
    end
  end

  it 'should roll fewer than its sides' do
    Dice::D20.each do | dX |
      100.times do
        expect((eval dX.to_s).roll_sides).to be <= d_to_n(dX)
      end
    end
  end

end