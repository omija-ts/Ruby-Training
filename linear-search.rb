# 線型探索
def linear_search(search_number, numbers)
  checki_flag = numbers.each { |n|
    unless n != search_number
      puts "#{search_number}はありました" ; break 
    end
  }
  puts "#{search_number}はありませんでした" if checki_flag == numbers
end

puts linear_search(122, 1..100)

# # 遊び
# a = [3]
# b = [*1..100]
# if (a & b).empty?
#   puts "#{a[0]}はありません"
# else
#   puts "#{a[0]}はありました"
# end
