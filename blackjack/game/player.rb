require_relative "../card/deck.rb"

# プレイヤークラス
class Player
  def initialize
    @decks = Deck.new
    @card_in_hand = @decks.reduce_deck(2)
  end

  # ポイント算出
  def point_calclation
    @card_in_hand.sum { |elm| elm[0] }
  end

  # カードを引く
  def draw
    draw_card = @decks.reduce_deck(1).flatten
    puts "#{@decks.string_convert_number(draw_card[0],draw_card[1])}を引きました"
    @card_in_hand << draw_card
  end

  # バースト判定
  def burst_judgment(number)
    number > 21
  end
end
