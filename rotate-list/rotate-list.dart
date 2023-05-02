//Rotate a list k times to the right and return the rotated linked list.
//To solve this I found the remainder of the k / length of linked list 
//then I iterated through the output of that each time moving all of the values one
//to the right in the list.
//Time: 280ms Beats: 100%
//Memory: 144.3MB Beats: 100%
//This problem did not have enough submissions for dart to give accuarte metrics.
//To optimize my solution I would iterate through the list one time first finding all of the values
//that overflowed to the start then adding on the rest of the values. That solution would be O(n) time as opposed
//to my solution which is O(n*k)
/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? rotateRight(ListNode? head, int k) {
      if(head == null){
          return head;
      }
      List<int> vals = [];
      while(head != null){
          vals.add(head.val);
          head = head.next;
      }
      k = k % vals.length;



      List<int> original =  List.from(vals);
      for(int x = 0 ; x < k ; ++x){
        for(int i = 1 ; i < vals.length ; ++i){
            vals[i] = original[i - 1];
        }
        vals[0] = original[original.length - 1];
        original =  List.from(vals);
      }
      ListNode? start;
      ListNode last = new ListNode();
      for(int i = 0 ; i < vals.length ; ++i){
          ListNode current = new ListNode();
          current.val = vals[i];
          if(start == null){
              start = current;
              last = current;
          }
          else{
              last.next = current;
              last = current;
          }
      }
      return start;
    }
}
