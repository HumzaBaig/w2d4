def two_sum_hash?(arr, target)
  hash = Hash.new(0)

  arr.each do |num|
    hash[num] += 1
  end

  arr.each do |num1|
    num2 = target - num1

    if hash[num2] != 0
      return true if num1 != num2 || hash[num1] > 1
    end
  end

  false
end

# O(n)

arr = [0, 1, 5, 7]
p two_sum_hash?(arr, 6) # => should be true
p two_sum_hash?(arr, 10) # => should be false
