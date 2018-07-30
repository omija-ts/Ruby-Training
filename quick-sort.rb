# クイックソートを行うクラス
def sort_array(range)
  retune "a" if range.size <= 1
  pivot = range[0]
  pivot_small_array = []
  pivot_big_array = []
  i = 0
  for i in 1..(range.size - 1)
    if range[i] < pivot
      pivot_small_array << range[i]
    else
      pivot_big_array << range[i]
    end
  end
  p [pivot_small_array, [pivot], pivot_big_array]
end

def aaaa(range)
  i = 0
  for i in 0..(range.size - 1)
    p a = range.partition { |n| range[i] > n }
    a.flatten
  end
end

my_range = [*0..100].shuffle.take(10)
puts "#{my_range}:元データ"
aaaa(my_range)