//Given a singly linked list return the list where the order is
//L1,Ln,L2,Ln-1 and so on where n is the length of the list.
//The time complexity of this code is O(n) where n is the length of the list.
//My solution first creates a list of the linked list then orders it properly,
//and it finally sets the next of each node to the proper node.
//Time: 271ms Beats: 100%
//Memory: 148.2MB Beats: 66.67%
class Solution {
  void reorderList(ListNode? head) {
      ListNode? itr = head;
      List<ListNode?> vals = [];
      while(itr != null){
          vals.add(itr);
          itr = itr.next;
      }
      List<ListNode?> return_list = [];
      return_list.add(vals[0]);

      for(int i = 0 ; return_list.length < vals.length + 1; ++i){
        return_list.add(vals[i]);
        return_list.add(vals[vals.length - 1 - i]);
      }

      for(int i = 0 ; i < return_list.length - 1 ; ++i){
        return_list[i]?.next = return_list[i + 1];
      }
      if(vals.length % 2 == 1){
        return_list[return_list.length - 2]?.next = null;

      }
      else{
        return_list[return_list.length - 1]?.next = null;
      }

  }
}
