//Made list only add if the value in one of the lists is larger than the other
//this made it so that I did not have to run an O(nlog(n)) sort after the list is
//fully setup.

//Time: 253ms Beats: 95.56%
//Memory 144MB Beats: 40.47%

class ListNode{
    int val = 0;
    ListNode? next;
}

void main(){
    Solution sol = new Solution();
    ListNode head1 = new ListNode();
    ListNode ln1 = new ListNode();
    head1.val = 4;
    ln1.val = 5;
    head1.next = ln1;
    ListNode ln2 = new ListNode();
    ln2.val = 10;
    ln1.next = ln2;
    ListNode? ln = sol.mergeTwoLists(head1, ln1);
    while(ln?.val != null){
        print(ln?.val);
        ln = ln?.next;
    }
}
class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
      
    if(list1?.val == null && list2?.val == null){
      return list1 ;
    }

    List<int?> vals = [];

    while(list1?.val != null && list2?.val != null){
      int? v1 = list1?.val;
      int? v2 = list2?.val;
      if((v1 ?? 0) > (v2 ?? 0)){
        vals.add(v2);
        list2 = list2?.next;
      }
      else{
        vals.add(v1);
        list1 = list1?.next;
      }




    }
    while(list1?.val != null){
      vals.add(list1?.val);
      list1 = list1?.next;

    }
    while(list2?.val != null){
      vals.add(list2?.val);
      list2 = list2?.next;

    }
    
    ListNode ln = new ListNode();
    ListNode ln1 = new ListNode();
    ListNode start = ln;
    for(int i = 0 ; i < vals.length - 1; ++i){
      ln.val = vals[i] ?? 0;
      ln.next = ln1;
      ln = ln1;
      ln1 = new ListNode();
    }
      ln.val = vals[vals.length - 1] ?? 0;
      return start;
  }




}
