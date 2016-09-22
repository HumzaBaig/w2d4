require 'byebug'

def my_min_1(list)
  list.each do |el1|
    return el1 if list.all? { |el2| el2 >= el1 }
  end
end

# time complexity: 0(n^2)

def my_min_2(list)
  min_num = nil

  list.each do |el|
    min_num = el if min_num.nil? || el < min_num
  end

  min_num
end

# time complexity = 0(n)

def largest_contiguous_subsum_1(array)
  sub_arrays = []
  i = 0

  while i < array.length - 1
    j = i + 1

    while j < array.length
      sub_arrays << array[i..j]
      j += 1
    end

    i += 1
  end

  sub_arrays.map! { |subset| subset.inject(:+) }

  sub_arrays.max

end

# time complexity = O(n^3)

def largest_contiguous_subsum_2(array)
  # debugger
  sum = array[0]
  max_sum = array[0]

  i = 1
  while i < array.length

    sum = 0 if sum < 0

    sum += array[i]
    max_sum = sum if sum > max_sum

    i += 1
  end

  max_sum
end

# time complexity = O(n)

list = [5, 3, -7]
p largest_contiguous_subsum_2(list) # => -1 (from [-1])
