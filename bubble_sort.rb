def sift_through(arr)
  arr.each_with_index do |_num, ind|
    break if arr[ind + 1].nil?
    next unless arr[ind] > arr[ind + 1]

    arr[ind], arr[ind + 1] = arr[ind + 1], arr[ind]
  end
end

def bubble_sort(arr)
  arr.length.times { sift_through(arr) }
  arr = arr
end
p bubble_sort(arr)
