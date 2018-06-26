# ==== メソッド内容
# * 線形探索を行う。
# ==== 引数
# * number :: 検索値: integer
# * renge :: 検索範囲: array
# ==== 変数
# * result :: 検索判定: array
#--
# ==== 処理内容
# each (range から number を探して、結果を result に格納: array)
# if_true (result が nil ならば、検索値が見つかった旨を返す: strings)
# if_false (result がレシーバ自身なら、検索値が見つからなかった旨を返す: strings)
#++

def linear_search(number, range)
  result = range.each { |n| break if n == number }
  if result.nil?
    puts "#{number}はありました"
  else
    puts "#{number}はありませんでした"
  end
end

# 出力 :nodoc:
linear_search(101, [*1..100])
