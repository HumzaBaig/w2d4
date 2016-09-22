def first_anagram?(first_string, second_string)

  permutations = first_string.chars.permutation.to_a.map(&:join)

  permutations.include?(second_string)
end

# 0(n * n!)



# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(first_string, second_string)
  first_string.chars.each_index do |idx|
    if second_string.include?(first_string[idx])
      second_string.delete!(first_string[idx])
      first_string[idx] = " "
    end
  end

  first_string.gsub!(" ", "")

  first_string.empty? && second_string.empty?
end

# O(n^2)

def third_anagram?(first_string, second_string)
  first_string.chars.sort == second_string.chars.sort
end

# O(n logn)

def fourth_anagram?(first_string, second_string)
  letter_counts_1 = Hash.new(0)
  letter_counts_2 = Hash.new(0)

  first_string.each_char do |char|
    letter_counts_1[char] += 1
  end

  second_string.each_char do |char|
    letter_counts_2[char] += 1
  end

  letter_counts_1 == letter_counts_2

end

#O(n)

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true
