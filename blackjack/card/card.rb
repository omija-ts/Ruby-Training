# カードを定義するクラス
class Card
  def initialize
    @card = [*1..13]
    @mark = { heart: "ハート", dia: "ダイア", crab: "クラブ", spade: "スペード" }
  end

  # 表示用
  def string_convert_number(number, mark)
    case number
    when 1
      "#{@mark[mark]}のA"
    when 11
      "#{@mark[mark]}のJ"
    when 12
      "#{@mark[mark]}のQ"
    when 13
      "#{@mark[mark]}のK"
    else
      "#{@mark[mark]}の#{number}"
    end
  end
end
