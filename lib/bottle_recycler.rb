require 'active_support/all'

class BottleRecycler
  BOTTLE_PRICE = 2

  attr_reader :payout
  attr_accessor :investment

  def initialize(investment)
    @investment = investment.to_i
    @payout = @current_caps = @current_bottles = (@investment / BOTTLE_PRICE)
    calculate_payout
  end

  def calculate_payout
    while @current_bottles > 0
      new_bottles = (@current_bottles / 2) + (@current_caps / 4)
      break if new_bottles == 0 # we can't redeem any more bottles with what we have

      # we need to make sure we capture the bottles that weren't redeemed!
      @current_bottles = new_bottles + (@current_bottles % 2)
      @current_caps =  new_bottles + (@current_caps % 4)

      # add the new bottles to our running total
      @payout += new_bottles
    end
  end

  def to_s
    "You're initial investment of $#{@investment} paid out in #{@payout} #{'bottle'.pluralize(@payout)}!"
  end
end