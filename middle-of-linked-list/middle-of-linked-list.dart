//Write a program to return a linked list starting from the mid point
//of the inputted linked list. If the midpoint is between two values return the one on the right.
//This algorithm is O(n) time complexity where n is the length of the list.
//Time: 252ms Beats: 73.27%
//Memory: 143.1MB Beats: 21.78%

class Solution {
  ListNode? middleNode(ListNode? head) {
      List<ListNode> nodes = [];
      while(head != null){
        nodes.add(head);
        head = head.next;
      }
      ListNode mid_node = nodes[ (nodes.length / 2).toInt() ];
      return mid_node;
  }
}
