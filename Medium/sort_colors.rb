# Sort colors
# Link to problem: https://leetcode.com/problems/sort-colors/description/

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.

def sort_colors(nums)
  start = 0
  end_index = nums.length - 1
  curr = 0

  while (curr <= end_index)
    if (nums[curr] == 2 && curr != end_index)
      temp = nums[end_index]
      nums[end_index] = nums[curr]
      nums[curr] = temp
      end_index = end_index - 1 
		elsif (nums[curr] == 0 && curr !=start)
      temp = nums[start]
      nums[start] = nums[curr]
      nums[curr] = temp
      start = start + 1
    else
      curr = curr + 1
    end
  end
end


# Code Breakdown and Time Complexity

# The while loop iterates over the array once, moving the curr pointer through the array.
# Within each iteration, one of the following happens:

# If the current value is 2, a swap is performed, and end_index is decremented.
# If the current value is 0, a swap is performed, and start is incremented.
# Otherwise, curr is incremented.
# Each operation (swap, increment, or decrement) is O(1). The pointer curr only moves forward, and the loop runs at most n iterations,
#  where n is the length of the array.

# Thus, the time complexity is O(n).
# The algorithm modifies the array nums in place without using any additional data structures. 
# The only extra space used is for a few variables (start, end_index, curr, and temp), all of which are scalars.

# Thus, the space complexity is O(1).