# ==== メソッド内容
# * バブルソートを行う。
# ==== 引数
# * range :: 検索範囲: array
# * flag :: 昇順降順判定用: integer(1 = 昇順, -1 = 降順)
# ==== 変数
# * i :: カウンター: integer 
# * number :: 数値格納用: integer
#--
# ==== 処理内容
# for で配列の要素数だけ回す。必要数だけ回そうとすると条件分岐が必要になるため、
# ソートに必要なマックス数である配列の要素数でループさせる。
# ネスト内で要素同士を比べ、正の場合は number に一時的に数値を格納し入れ替える。
#++

def bubble_sort(range, flag = 1) 
  i = 0
  for i in range
    for i in 0..range.size
      if (range[i] <=> range[i + 1]) == flag
        number = range[i]
        range[i] = range[i + 1]
        range[i + 1] = number 
      end
    end
  endgit
end

# 出力 :nodoc:
my_range = [*0..100].shuffle.take(10)
puts "#{my_range}:元データ"
p bubble_sort(my_range)
