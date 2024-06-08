
def merge_sort(arr)
  return arr if arr.length == 1 || arr.length == 0

  middle = arr.length / 2

  left = arr[0...middle]
  right = arr[middle...arr.length]

  left_side = merge_sort(left)
  right_side = merge_sort(right)

  merge(left_side, right_side)
end


def merge(left, right)
  hold_array = []

  until left.empty? || right.empty?
    if left[0] < right[0]
      hold_array << left.slice!(0)
    else
      hold_array << right.slice!(0)
    end
  end

  hold_array + left + right
end


arr1 = [9, 8, 7, 6, 5, 4, 3, 2]

p merge_sort(arr1)
