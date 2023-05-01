//Return a linked list of all nodes that do not contain a higher value on their right
//To solve this I created an array of all the linked list items. I then iterated through it
//from the left searching to see if a higher value on the right existed. If it did not then
//it would link up to the last node found and the new node would be the head.
//The time complexity of this code is O(n) where n is the number of nodes.
//Time: 497ms Beats: 100%
//Memory: 220.7MB Beats: 100%
//This question did not have enough submissions to show
//metrics, but I am confident my solution is rather fast.

class Solution {
  ListNode? removeNodes(ListNode? head) {

      List<int> reverse_list = [];
      while(head != null){
          reverse_list.add(head.val);
          head = head.next;
      }
      int highest = 0;
      ListNode current = new ListNode();
      ListNode? last;

      for(int i = reverse_list.length - 1; i >= 0 ;--i){
        if(reverse_list[i] >= highest){
            highest = reverse_list[i];
            current = new ListNode();
            current.val = highest;
            if(last != null){
              current.next = last;
              head = current;
            }
            else{
              head = current;
            }
            last = current;
          }
      }




      return head;
  }
}
