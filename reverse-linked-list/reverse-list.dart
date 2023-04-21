//This algorithm reverses the order of a linked list.
//To do this it puts all of the values into a list and then
//iterates through the list in reverse order placing each iterated value
//into a new linked list. From there it returns that head of the new list.
//The time complexity of this is O(n) where n is the length of the list.
//Runtime: 239ms Beats: 93.94%
//Memory: 142.5MB Beats: 77.78%

/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? reverseList(ListNode? head) {
    if(head == null){
      return null;
    }

      List<ListNode?> nodes = [];
      while(head != null){
        nodes.add(head);
        head = head.next;
      }
      ListNode? ln1 = new ListNode();
      ln1.val = nodes[nodes.length - 1]?.val ?? 0;
      head = ln1;
      ListNode? ln2;
      for(int i = nodes.length - 2 ; i >= 0 ; --i){
        ln2 = new ListNode();
        ln2.val = nodes[i]?.val ?? 0;
        ln1?.next = ln2;
        ln1 = ln2;
      }
      return head;
  }
}
