def bubble_sort_by(arr)
  cycle = arr.length - 1
  cycle.times do
    arr.each_with_index do |_val, ind|
      break if arr[ind + 1].nil?

      sort_by = yield(arr[ind], arr[ind + 1]) if block_given?
      arr[ind], arr[ind + 1] = arr[ind + 1], arr[ind] if sort_by.positive?
    end
  end
  arr = arr
end
