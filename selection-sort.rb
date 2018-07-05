# 選択ソートを行うクラス
class SelectionSort
  def initialize(range, asce_flag = true)
    @range = range
    @asce_flag = asce_flag
  end

  # ソート実行用メインメソッド
  def sort_array
    target_index = 0
    for target_index in 0..(@range.size - 1)
      @should_rewrite = false
      @mini_or_max_number_index = target_index

      for survey_index in (1 + target_index)..(@range.size - 1)
        @asce_flag ? ascending_sort_search(survey_index) : descending_sort_search(survey_index) 
      end
      rewrite_array(target_index) if @should_rewrite
      return @range if completed_sort?   
    end
  end

  # 昇順調査用サブメソッド
  def ascending_sort_search(survey_index)
    if @range[@mini_or_max_number_index] > @range[survey_index]
      @mini_or_max_number_index = survey_index
      @should_rewrite = true
    end
  end

  # 降順調査用サブメソッド
  def descending_sort_search(survey_index)
    if @range[@mini_or_max_number_index] < @range[survey_index]
      @mini_or_max_number_index = survey_index
      @should_rewrite = true
    end
  end

  # 書き換え用サブメソッド
  def rewrite_array(target_index)
    keep_number = @range[target_index]
    @range[target_index] = @range[@mini_or_max_number_index]
    @range[@mini_or_max_number_index] = keep_number
  end

  #ソートが完成したか判断するサブメソッド
  def completed_sort?
    i = 0
    has_completed_sort = true

    for i in 0..(@range.size - 2)
      if @asce_flag 
        has_completed_sort = false if @range[i] > @range[i + 1]
      else
        has_completed_sort = false if @range[i] < @range[i + 1]
      end
    end
    has_completed_sort
  end
end

my_range = [*0..100].shuffle.take(10)
puts "#{my_range}:元データ"
selection_sort = SelectionSort.new(my_range, false)
p selection_sort.sort_array
  