# Remove Element
# Problem link: https://leetcode.com/problems/remove-element/description/

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  start_index = 0
  end_index = nums.length - 1

  while (start_index <= end_index)
    if(nums[start_index] == val)
      nums[start_index] = nums[end_index]
      end_index = end_index - 1
      nums.pop()
    else
      start_index = start_index + 1
    end
  end
end


# Algorithm Steps

# start_index: Starts at the beginning of the array and scans through it.
# end_index: Points to the last element of the array and is used to replace unwanted elements.
# The loop continues as long as start_index is less than or equal to end_index.
# If the current element (nums[start_index]) is equal to val:
# Replace it with the value at nums[end_index].
# Decrement end_index to exclude the swapped value from further consideration.
# Remove the last element of the array using nums.pop().
# If the current element is not equal to val, increment start_index to move to the next element.
# The loop stops when start_index surpasses end_index, ensuring all occurrences of val have been removed.

# The nums.pop() call reduces the array size dynamically, keeping the valid elements in the array while discarding the unwanted ones.
# The algorithm minimizes unnecessary element shifts by swapping only when a match is found.

# Time Complexity
# The start_index iterates over the array once, moving one step forward each time a non-val element is encountered.
# end_index is decremented for each occurrence of val, and each swap involves a constant amount of work.
# In total, the algorithm processes each element at most once.
# Time Complexity: O(n), where n is the number of elements in the array.

# Space Complexity
# The algorithm works in place, modifying the input array without using additional data structures.
# Only a few variables (start_index, end_index) are used for bookkeeping.
# Space Complexity: O(1).