# frozen_string_literal: true

require 'pry'

# rubocop:dis able Metrics/AbcSize
# rubocop:dis able Metrics/MethodLength
def merge_sort(array)
  # binding.pry
  # p array
  return array if array.length < 2

  # p "didn't return"
  left = array[0..(array.length / 2) - 1]
  right = array[(array.length / 2)..-1]
  # left, right = array.each_slice((array.size / 2.0).round).to_a
  # p "Left is #{left}"
  # p "Right is #{right}"

  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  return left if right.empty?
  return right if left.empty?

  if left[0] < right[0]
    [left[0]] + merge(left[1..-1], right)
  else
    [right[0]] + merge(left, right[1..-1])
  end
end
p merge_sort([5, 2, 1, 3, 6, 4])
p merge_sort([5, 2, 2, 1, 3, 6, 4])
p merge_sort([4, 8, 6, 2, 1, 7, 5, 3])
