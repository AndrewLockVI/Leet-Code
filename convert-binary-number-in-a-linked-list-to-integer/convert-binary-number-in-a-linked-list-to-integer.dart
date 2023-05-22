//Given a linked list return the decimal form of the binary value.
//To do this I placed all of the values into an array list. Then
//I iterated through the list in reverse order and if the value was a 1
//at the given index I would add 2^n where n is the current node.
//The time complexity of this code is O(n) where n is the number of nodes
//in the list.
//Time: 240ms Beats: 87.50%
//Memory: 142.3MB Beats: 62.50%

class Solution {
  int getDecimalValue(ListNode? head) {
    List<int> vals = [];
    while(head != null){
      vals.add(head.val);
      head = head.next;
    }
    int return_val = 0;
    int itr = 0;
    for(int i = vals.length -1 ; i >= 0 ; --i){
      if(vals[i] == 1){
        return_val += (pow(2 , itr)).toInt();
      }
      itr += 1;
    }
    return return_val;
  }
}
