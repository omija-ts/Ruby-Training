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
# for で配列の要素数を回す、1回の処理ごとにループの数を減らしていく
# ネスト内で要素同士を比べ、正の場合は number に一時的に数値を格納し入れ替える。
# counter の処理しなかった回数と range の値が一緒なら、ソート済みとしてループを抜ける。
#++

def bubble_sort(range, flag = 1)
  for i in 1...range.size
    counter = 0
    for j in 0..(range.size - i)
      if (range[j] <=> range[j + 1]) == flag
        number = range[j]
        range[j] = range[j + 1]
        range[j + 1] = number 
      else
         counter += 1
      end
    end
  return range if (counter - 1) == (range.size - i)
  end
  range
end

# 出力 :nodoc:
my_range = [*0..100].shuffle.take(10)
puts "#{my_range}:元データ"
p bubble_sort([1, 2, 3, 7, 5, 6])
