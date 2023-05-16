//Swap every other node in a list then return the head.
//I did this the easy way by putting them into an array swapping
//them and setting the next val to the next.
//The time complexity if O(n) where n is the lenght of the list.
//Time: 258ms Beats: 77.78% 
//Memory: 144.5MB Beats: 22.22%
class Solution {
  ListNode? swapPairs(ListNode? head) {
      if(head == null || head?.next == null){
          return head;
      }
      List<ListNode?> nodes = [];
      while(head != null){
          nodes.add(head);
          head = head.next;
      }
      int itr = 0;
      while(itr < nodes.length - 1){
          ListNode? temp = nodes[itr];
          nodes[itr] = nodes[itr + 1];
          nodes[itr + 1] = temp;
          itr += 2;
      }
      for(int i = 0 ; i < nodes.length - 1; ++i){
          nodes[i]?.next = nodes[i + 1];
      }
      nodes[nodes.length - 1]?.next = null;
      return nodes[0];
  }
}
