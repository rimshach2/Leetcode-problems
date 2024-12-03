# Middle of the Linked List
# Link to problem: https://leetcode.com/problems/middle-of-the-linked-list/description/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}

def middle_node(head)
  mid = head
  curr = head

  while (curr != nil)
      
    curr = curr.next
    if (curr)
      curr = curr.next
      mid = mid.next
    end
  end
  return mid
end


# Code Breakdown

# mid pointer starts at the head of the list. This pointer will eventually point to the middle node.
# curr pointer also starts at the head of the list. This pointer moves twice as fast as mid.

# The curr pointer moves two steps at a time (curr = curr.next.next).
# The mid pointer moves one step at a time (mid = mid.next).
# This ensures that by the time curr reaches the end of the list, mid will be at the middle.
# The loop continues until curr becomes nil or curr.next is nil, which means the end of the list has been reached.
# The mid pointer, which is now pointing to the middle node, is returned.

# If the list has an odd number of nodes, mid will point to the exact middle node.
# If the list has an even number of nodes, mid will point to the second middle node.

# The curr pointer traverses the list at twice the speed of the mid pointer. The loop runs until curr reaches the end, meaning the algorithm makes a single pass through the list.
# Time Complexity: O(n), where n is the number of nodes in the linked list.

# The algorithm only uses two pointers (mid and curr), and no additional data structures are required.
# Space Complexity: O(1).