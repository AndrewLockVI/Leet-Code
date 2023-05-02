//Merge the values contained between zeroes and return the new linked list.
//Ex. 0 1 2 0 2 2 2 2 0
//Output [3, 8]
//Explanation: Adding 1 and 2 between the first two zeroes gives us 3
//then adding 2 4 times gives eight.
//The time complexity of this code is O(n) where n is the number 
//of nodes in the inputted list.
//Time: 569ms Beats: 50%
//Memory: 229.9MB Beats: 16.67%


/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? mergeNodes(ListNode? head) {

      ListNode? start;
      ListNode? last;
      head = head?.next;
      int total = 0;
      while(head != null){
          if(head.val == 0){
              if(start == null){
                  start = new ListNode();
                  start.val = total;
                  total = 0;
                  last = start;
              }
              else{
                  ListNode current = new ListNode();
                  current.val = total;
                  last?.next = current;
                  last = current;
                  total = 0;
              }
          }
          total += head.val;
          head = head.next;
      }
      return start;
  }
}
