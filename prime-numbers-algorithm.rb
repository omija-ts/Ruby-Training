# ==== メソッド内容
# * 引数の数値以下の素数出しを行う。
# ==== 引数
# * max :: 素数を調べる値: integer
# ==== 変数
# * root :: max に渡された値の平方根を格納する: integer
# * my_array :: 割り出した素数を格納する array
#--
# ==== 処理内容
# 1 と root 以上の値をチェックする必要がないため、第一ループで割る数値を制御する
# 第二ループで対象の値 e に対して、i の値で商を求め、trueになったものを配列から削除していく
# 第二ループの最後の式は,root 以下の数値に対する処理
#++

def get_prime_numbers(max)
  root = max ** (1/2.0)
  my_array = [*2..max]

  2.upto(root) { |i|
    my_array.reject! { |n| (n % i == 0) && (n > i) }
  }
  return my_array
end

# 出力 :nodoc:
p get_prime_numbers(100)