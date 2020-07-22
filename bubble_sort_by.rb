require "pry"
def sift_through(arr)
  arr.each_with_index do |_num, ind|
    break if arr[ind + 1].nil?
    next unless arr[ind].length > arr[ind + 1].length

    arr[ind], arr[ind + 1] = arr[ind + 1], arr[ind]
  end
  binding.pry
end

def bubble_sort_by
  arr = yield
  arr.length.times { sift_through(arr) }
  p arr
end
bubble_sort_by{%w[what hi pointer hey]}
