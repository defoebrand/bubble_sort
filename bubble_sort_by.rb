def bubble_sort_by(arr)
  cycle = arr.length - 1
  if block_given?
    cycle.times do
      arr.each_with_index do |_val, ind|
        break if arr[ind + 1].nil?

        sort_by = yield(arr[ind], arr[ind + 1])
        arr[ind], arr[ind + 1] = arr[ind + 1], arr[ind] if sort_by.positive?
      end
    end
  else
    without_block(cycle, arr)
  end
  arr
end

def without_block(cycle, arr)
  cycle.times do
    arr.each_with_index do |_val, ind|
      break if arr[ind + 1].nil?

      arr[ind], arr[ind + 1] = arr[ind + 1], arr[ind] if (arr[ind].length <=> arr[ind + 1].length).positive?
    end
  end
end

greetings = %w[hey howdy hello hey hi]

p bubble_sort_by(greetings) { |left, right| left.length - right.length }
