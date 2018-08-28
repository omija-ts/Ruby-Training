# ==== メソッド内容
# * 二分探索を行う。
# ==== 引数
# * array :: 検索範囲: array
# * number :: 検索値: integer
# ==== 変数
# * i :: カウンター: integer
# * high :: 要素の最後の添字を格納: integer
# * low :: 要素の最初の添字を格納: integer
# * log :: 対数を格納: integer
# * middle :: 要素の中間の添字を格納: integer
# * result :: 条件判定用: integer
#--
# ==== 処理内容
# middle の添字の値が number と同じになるかをチェックし、同じではない場合、
# number が middle より大きければ、low に middle を格納
# number が middle より小さければ、high に middle を格納
# 対数の数までループし、result に戻り値があれば終了
#++

def binary_search_tree(array, number)
  i = 0
  high =array.size
  low = 0
  log = Math.log2(array.size.to_i)

  while i < log
    middle = ((low + high) / 2)
    if array[middle] ==  number
      result = middle break
    else
      middle < number ? low = middle : high = middle
    end
    i += 1
  end
  result.nil? ? "#{number}はありませんでした" : "#{number}はarray[#{result}]にありました"
end

# 出力 :nodoc:
number =rand(1..10_000)
array = [*1..10_000].take(5000)
p binary_search_tree(array, number)
