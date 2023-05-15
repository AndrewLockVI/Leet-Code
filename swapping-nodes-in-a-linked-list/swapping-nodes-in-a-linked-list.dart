//Swap two nodes in a linked list without swapping the values.
//Basically place the kth element in the length - kth spot
//and vice versa not just swap the stored values.
//I did this using an array list where I swapped the nodes
//and then went through the list setting the next node to be
//n + 1. This was the easiest solution I could think of.
//The time complexity of this is O(n) where n is the lenght of the
//list.
//Time: 465ms Beats: 50%
//Memory: 212.2MB Beats: 25%
class Solution {
  ListNode? swapNodes(ListNode? head, int k) {
    ListNode? itr = head;
    List<ListNode?> vals = [];
    while(itr != null){
      vals.add(itr);
      itr = itr.next;
    }
    
    ListNode? temp = vals[k - 1];
    vals[k - 1] = vals[vals.length - k];
    vals[vals.length - k] = temp;
    for(int i = 0 ; i < vals.length - 1 ; ++i){
      vals[i]?.next = vals[i + 1];
    }
    vals[vals.length - 1]?.next = null;
    return vals[0];
  }
}
