# ==== メソッド内容
# * バブルソートを行う。
# ==== 引数
# * range :: 検索範囲: array
# * flag :: 昇順降順判定用: integer(1 = 昇順, -1 = 降順)
# ==== 変数
# * counter :: カウンター: integer 
# * number :: 数値格納用: integer
#--
# ==== 処理内容
# for で配列の要素数を回す、1回の処理ごとに i でループの数を減らしていく
# ネスト内で要素同士を比べ、正の場合は number に一時的に数値を格納し入れ替える。
# counter に range.size の値を入れ込み、ループ後に変化がなければソート済みとして return する。
#++

def bubble_sort(range, flag = 1)
  for i in 1...range.size
    counter = (range.size - i)
    for j in 0..(range.size - i)
      if (range[j] <=> range[j + 1]) == flag
        number = range[j]
        range[j] = range[j + 1]
        range[j + 1] = number 
        counter = 0
      end
    end
    return range if counter == (range.size - i)
  end
  range
end

# 出力 :nodoc:
my_range = [*0..100].shuffle.take(10)
puts "#{my_range}:元データ"
p bubble_sort([1, 2, 3, 7, 5, 6])
