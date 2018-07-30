require_relative "./player.rb"

# ディーラークラス
class Dealer < Player
  def initialize
    super
    puts "場札は#{@decks.string_convert_number(@card_in_hand[0][0],@card_in_hand[0][1])}です"
  end

  def npc
    while point_calclation < 17
      draw
    end
    puts "ディーラーの点数は#{point_calclation}点です"
    if burst_judgment(point_calclation)
      puts "あなたは勝ちました" 
      exit[0]
    end
  end
end
