def insertion_sort(array)
  (1...array.length).each do |i|
    key = array[i]
    j = i - 1
    while j > 0 && array[j] > key
      array[j+1] = array[j]
      j -= 1
    end
    array[j+1] = key
  end
  puts array
end

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  puts array
end

def merge_sort(array)
  return array if array.length <= 1
  middle = (array.length / 2) - 1
  left = merge_sort(array[0..middle])
  right = merge_sort(array[middle+1..-1])
  return merge(left, right)
end

def merge(left, right)
  sorted = []
  l, r = 0, 0
  loop do
    break if r >= right.length && l >= left.length
    if r >= right.length || (l < left.length && left[l] < right[r])
      sorted << left[l]
      l += 1
    else
      sorted << right[r]
      r += 1
    end
  end
  return sorted
end
