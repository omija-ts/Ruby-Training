require_relative "card.rb"

# 山札のクラス
class Deck < Card
  attr_reader :decks # テスト用
  def initialize
    super
    @decks = (@card * 4).sort.zip(@mark.keys.cycle(13).to_a).shuffle
  end

  # drawされたら山札から引数の値分減らし、drawしたカードを返す
  def reduce_deck(number_of_sheet)
    draw_card = @decks.sample(number_of_sheet)
    draw_card.each { |n| @decks.delete(n) }
  end
end
