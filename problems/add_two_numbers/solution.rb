# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  result = ListNode.new
  tmp_result = result
  remain = 0
  while !l1.nil? || !l2.nil?
    sum = (l1&.val || 0) + (l2&.val || 0) + remain
    tmp_result.val = sum % 10
    remain = sum / 10
    l1 = l1&.next
    l2 = l2&.next
    if l1 || l2
        tmp_result.next = ListNode.new
        tmp_result = tmp_result.next
    end
  end
  if !l1 && !l2 && remain > 0
    tmp_result.next = ListNode.new
    tmp_result.next.val = remain
    tmp_result = tmp_result.next
  end
  result
end