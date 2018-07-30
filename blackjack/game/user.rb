require_relative "./player.rb"

# Userクラス
class User < Player
  def initialize
    super
    puts "あなたの点数は#{point_calclation}点です"
  end

  # 行動選択
  def select_action
    puts "カードを引きますか？\ny / n"
    action = gets.chomp

    while action == "y"
      draw
      puts "あなたの点数は#{point_calclation}点です"
      if burst_judgment(point_calclation)
        puts "あなたは負けました" 
        exit[0]
      end
      puts "カードを引きますか？\ny / n"
      action = gets.chomp
    end
  end
end
