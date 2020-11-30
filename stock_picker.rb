def stock_picker(arr)
  final_array = []
  positions_tracker = []
  score_tracker = 0

  arr.each_with_index do |item, index|

    arr.each_with_index do |i, idx|
      if item > i and index > idx then
            final_array << "#{item} - #{i} = #{item - i} has positions of idx: #{index} and index: #{idx}"
            if score_tracker < (item - i) then
              score_tracker = (item - i)
              positions_tracker[0] = idx
              positions_tracker[1] = index
            end
      end
    end
  end

  positions_tracker
end