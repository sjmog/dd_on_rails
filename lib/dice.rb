module Dice

  D20 = [:d2, :d3, :d4, :d6, :d8, :d10, :d12, :d20]

  class D

    attr_reader :d

    def initialize dX
      @d = d_to_n dX
    end

    def roll_sides
      rand 1..d
    end

    private

    def d_to_n dX
      dX.to_s.scan(/\d+/)[0].to_i
    end

  end
  
end