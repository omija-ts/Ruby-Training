# ゲームの判定処理
module GameJudge
  # 勝者判定
  def player_win_judgment(player_number, dealer_number)
    if player_number == dealer_number
      puts "引き分けです"
    elsif player_number > dealer_number
      puts "あなたは勝ちました"
    elsif player_number < dealer_number
      puts "あなたは負けました"
    end
  end

  module_function :player_win_judgment
end
