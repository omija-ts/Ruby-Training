# ==== メソッド内容
# * ハッシュ内のシンボルを文字列に変換する。
# ==== 引数
# * my_hash :: 変換するハッシュ: hash
# ==== 変数
# * my_key :: key格納用配列: array
# * my_value :: value格納用配列: array
# * my_array :: ハッシュへの変換のために成形用の配列: array
#--
# ==== 処理内容
# ループでハッシュ内の key と value を別々の配列に格納
# そのままループの戻り値で格納すると symbolに戻ってしまうため
# 一度、配列で取り出し、その後、ハッシュに戻す。
#++

def symbol_str_converter(my_hash)
  my_key = []
  my_value = []
  my_hash.each { |key, value| my_key << key.to_s ; my_value << value.to_s }
  my_array = [my_key, my_value].transpose
  my_hash = Hash[*my_array.flatten]
end

# 出力 :nodoc:
my_hash = { :a => 1, b: 2 }
p symbol_str_converter(my_hash)