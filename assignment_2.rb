def merge_sort(arr)
  return arr if arr.length < 2

  new_arr = []
  left_half = merge_sort(arr[0...arr.length/2])
  right_half = merge_sort(arr[arr.length/2..])
  
  until left_half.empty? || right_half.empty?
    case left_half[0] <=> right_half[0]
    when -1
      new_arr << left_half.shift
    when 1
      new_arr << right_half.shift
    else
      new_arr.push(
        left_half.shift,
        right_half.shift
        )
    end    
  end
  left_half.empty? ? new_arr += right_half : new_arr += left_half  
  new_arr
end

arr = [2, 3, 6, 4, 7, 5, 9, 8, 1]
p merge_sort(arr)
