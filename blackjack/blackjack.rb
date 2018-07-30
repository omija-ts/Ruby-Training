require_relative "./game/user.rb"
require_relative "./game//dealer.rb"
require_relative "./game//module/game-judge.rb"
require_relative "./card/deck.rb"

# ディーラーのインスタンス化
dealer = Dealer.new

# ユーザーのインスタンス化
user = User.new

# ユーザーのターン
user.select_action

# ディーラーのターン
dealer.npc

# ゲーム判定
GameJudge.player_win_judgment(user.point_calclation, dealer.point_calclation)