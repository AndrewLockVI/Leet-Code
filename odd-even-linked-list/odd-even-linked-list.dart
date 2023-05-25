//Given a linked list return a new linked list that
//is ordered with the odd indexes at the start and even indexes at
//the end. To do this I created two seperate lists one for even one for odd.
//I then passed them to a function to return a linked list based on the input
//array.
//The time complextiy is O(n) where n is the length of the linked list.
//Time: 241ms Beats: 100%
//Memory: 142.9MB Beats: 75%
class Solution {
  ListNode? oddEvenList(ListNode? head) {
    if(head == null){
      return head;
    }
      List<int> even = [];
      List<int> odd = [];
      while(head != null){
          even.add(head.val);
          head = head.next;
          if(head?.val != null){
            odd.add((head?.val ?? 0));
          }
          head = head?.next;
      }
      return listify(even, odd);
  }
  ListNode listify(List<int> first , List<int> second){
    ListNode first_ln = new ListNode(first[0]);
    ListNode last = first_ln;
    for(int i = 1 ; i < first.length ; ++i){
      ListNode current = new ListNode(first[i]);
      last.next = current;
      last = current;
    }
    for(int i = 0 ; i < second.length ; ++i){
      ListNode current = new ListNode(second[i]);
      last.next = current;
      last = current;
    }

    return first_ln;
  }
}
