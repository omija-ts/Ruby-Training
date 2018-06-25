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
