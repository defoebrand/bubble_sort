def bubble_sort(arr)
  cycle = arr.length - 1
  cycle.times do
    arr.each_with_index do |_num, ind|
      break if arr[ind + 1].nil?
      next unless (arr[ind] <=> arr[ind + 1]).positive?

      arr[ind], arr[ind + 1] = arr[ind + 1], arr[ind]
    end
  end
  arr = arr
end
