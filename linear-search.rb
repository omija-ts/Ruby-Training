# ==== メソッド名
# linear_search(線形探索用メソッド: strings)
# ==== 引数
# find_number(検索値: integer)
# find_renge(検索範囲: array)
# ==== 変数
# find_result(検索判定: array)
# ==== 処理内容
# each (find_range から find_number を探して、結果を find_result に格納: array)
# if_true (find_result が nil ならば、検索値が見つかった旨を返す: strings)
# if_false (find_result がレシーバ自身なら、検索値が見つからなかった旨を返す: strings)
def linear_search(find_number, find_range)
  find_result = find_range.each { |n| break if n == find_number }
  if find_result.nil?
    puts "#{find_number}はありました"
  else
    puts "#{find_number}はありませんでした"
  end
end

# 出力
linear_search(101, [*1..100])
