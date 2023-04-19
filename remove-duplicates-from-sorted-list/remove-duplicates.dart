//This is a simple algorithm that removes duplicate values in a singly linked list that
//is already sorted. My algorithm has a worst case time complexity of O(n) where n is the length
//of the singly linked list.
//Time: 272ms Beats: 90.38%
//Memory: 143.7MB Beats: 40.38%



void main(){
    ListNode ln1 = ListNode();
    ListNode ln2 = ListNode();
    ListNode ln3 = ListNode();
    ln1.next = ln2;
    ln2.next = ln3;
    ln1.val = 0;
    ln2.val = 100;
    ln3.val = 100;
    Solution sol = new Solution();
    ListNode? head = sol.deleteDuplicates(ln1);
    while(head != null){
        print(head.val);
        head = head.next;
    }
}

class ListNode {
    int val = 0;
    ListNode? next;
}

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
      ListNode? first = head;
      ListNode? second = head?.next;
      while(true){
          second = head?.next;
          if(head == null){
              break;
          }
          if(head?.val == second?.val){
              head?.next = second?.next;
          }
          else{
              head = second;
          }

      }
      return first;
  }
}
