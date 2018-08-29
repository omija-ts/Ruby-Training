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
# has_completed_sort がTrueのままならソート済みとして return する。
#++

def bubble_sort(range, flag = 1)
  for i in 1...range.size
    has_completed_sort = true
    for j in 0..(range.size - i)
      if (range[j] <=> range[j + 1]) == flag
        number = range[j]
        range[j] = range[j + 1]
        range[j + 1] = number
        has_completed_sort = false
      end
    end
    return range if has_completed_sort
  end
  range
end

# 出力 :nodoc:
my_range = [*0..100].shuffle.take(10)
puts "#{my_range}:元データ"
p bubble_sort([1, 2, 3, 7, 5, 6])

foo = 1
barbaz = 2

case exp
when foo    then 2
when barbaz then 3
end

foo.bar
   .baz

foo.bar
   .baz
