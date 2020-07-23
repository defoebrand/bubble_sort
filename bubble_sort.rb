def bubble_sort(arr)
  cycle = arr.length - 1
  cycle.times do
    arr.each_with_index do |_num, ind|
      break if arr[ind + 1].nil?
      next unless (arr[ind] <=> arr[ind + 1]).positive?

      arr[ind], arr[ind + 1] = arr[ind + 1], arr[ind]
    end
  end
  arr
end

arr = [9, 8, 7, 6, 5, 6, 7, 8, 4, 3, 2, 1]

p bubble_sort(arr)
