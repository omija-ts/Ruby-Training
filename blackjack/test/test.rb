require "minitest/autorun"
require_relative "../game/module/game-judge.rb"
require_relative "../game/player.rb"
require_relative "../game/dealer.rb"
require_relative "../game/user.rb"
require_relative "../card/card.rb"
require_relative "../card/deck.rb"
require_relative "../card/deck.rb"


class TestBlackJack < Minitest::Test
# 各モジュールのテスト
  # GameJudgeのテスト
  def test_game_judge
    # 勝者判定
    assert_equal "あなたは勝ちました", GameJudge.player_win_judgment(18, 17)
    assert_equal "引き分けです", GameJudge.player_win_judgment(17, 17)
    assert_equal "あなたは負けました", GameJudge.player_win_judgment(16, 17)
  end

# 各クラスのテスト
  # 山札のテスト
  def test_deck
    # 山札作成
    deck = Deck.new
    assert_equal 52, deck.decks.size

    # カードを引く
    deck.reduce_deck(1)
    assert_equal 51, deck.decks.size
    deck.reduce_deck(2)
    assert_equal 49, deck.decks.size
  end

  # Cardのテスト
  def test_card
    assert_equal "ハートのA", Card.new.string_convert_number(1, :heart)
    assert_equal "ダイアのJ", Card.new.string_convert_number(11, :dia)
    assert_equal "クラブのQ", Card.new.string_convert_number(12, :crab)
    assert_equal "スペードのK", Card.new.string_convert_number(13, :spade)
    assert_equal "ハートの2", Card.new.string_convert_number(2, :heart)
  end

  # Playerのテスト
  def test_player

  end

  # Dealerのテスト
  def test_dealer
  end

  # Userのテスト
  def test_user
  end

# ゲームのテスト
  # blackjackのテスト
  def test_blackjack
  end
end
