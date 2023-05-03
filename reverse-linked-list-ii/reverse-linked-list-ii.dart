//Reverse the nodes between the left and right points of a linked list.
//To do this I put all of the nodes into an array and then using that array I created 
//a subarray of all the values between the left and the right nodes. Then I iterated through
//the list backwards to place them back into the original array. From there I turned the array
//into a linked list and returned it. Despite the number of steps this algorithm is still O(n) time 
//complexity where n is the number of nodes in the list.
//Time: 260ms Beats: 80%
//Memory: 142.7MB Beats: 80%

/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? reverseBetween(ListNode? head, int left, int right) {
      List<int> vals = [];
      while(head != null){
        vals.add(head.val);
        head = head.next;
      }
      List<int> between_list = [];
      int diff = right - left;
      for(int i = left - 1 ; i <= left - 1 + diff ; ++i){
        between_list.add(vals[i]);
      }
      int counter = 0;
      for(int i = right - 1 ; i >= left - 1 ; --i){
          vals[i] = between_list[counter];
          counter += 1;
      }
      ListNode? last;
      ListNode? first;
      for(int i = 0 ; i < vals.length ; ++i){
        if(first == null){
            first = new ListNode();
            first.val = vals[i];
            last = first;
        }
        else{
          ListNode current = new ListNode();
          current.val = vals[i];
          last?.next = current;
          last = current;
        }
      }
      return first;
  }
}
