require_relative 'data_structures'
require 'byebug'

def naive_windowed_max_range(array, window_size)
  current_max_range = nil

  i = 0
  while i + window_size <= array.length
    current_window = array[i...(i + window_size)]
    max = current_window.max
    min = current_window.min
    range = max - min

    current_max_range = range if current_max_range.nil? || range > current_max_range
    i += 1
  end

  current_max_range
end

# O(n^2)

def optimized_windowed_max_range(array, window_size)
  queue = MyQueue.new


end
