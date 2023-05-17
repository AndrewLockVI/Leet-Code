//Find the maximum value of all twins in a linked list.
//A twin is the n and linked-list.length - 1 - n values combined together.
//The time complexity of my code is O(n) because it simply iterates through the list
//once and then again a second time.
//Time: 424ms Beats: 100%
//Memory: 211.5MB Beats: 50%

class Solution {
  int pairSum(ListNode? head) {
      List<int> vals = [];
      while(head != null){
        vals.add(head?.val ?? 0);
        head = head?.next;
      }
      int max = 0;
      for(int i = 0 ; i < vals.length / 2 ; ++i){
        if(max < vals[i] + vals[vals.length - 1 - i]){
          max = vals[i] + vals[vals.length - 1 - i];
        }
      }
      return max;
  }
}
