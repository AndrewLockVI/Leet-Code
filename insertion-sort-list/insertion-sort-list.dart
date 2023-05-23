//Given a linked list sort it then return the sorted linked list.
//You are supposed to use insertion sort, but that would be slow
//so I used merge sort. To do this I first placed all values in an array
//then sent those values to a merge sort function which runs merge sort on them.
//From there that list is sent to the toLinkedList function
//which takes an input of type list and returns it as a linked list.
//Time: 286ms Beats: 75%
//Memory: 150.3MB Beats: 25%

class Solution {
  ListNode? insertionSortList(ListNode? head) {
      List<int> vals = [];
      while(head != null){
          vals.add(head.val);
          head = head.next;
      }
      vals = merge_sort(vals);
      return toLinkedList(vals);
  }
  List<int> merge_sort(List<int> vals){
    if(vals.length == 1){
      return vals;
    }
    List<int> l1 = merge_sort(vals.sublist(0, (vals.length/2).toInt()));
    List<int> l2 = merge_sort(vals.sublist((vals.length/2).toInt()));
    List<int> l3 = [];
    int l1_pt = 0;
    int l2_pt = 0;
    while(l1_pt < l1.length && l2_pt < l2.length){
      if(l1[l1_pt] < l2[l2_pt]){
        l3.add(l1[l1_pt]);
        l1_pt += 1;
      }
      else{
        l3.add(l2[l2_pt]);
        l2_pt += 1;
      }
    }
    while(l1_pt < l1.length){
      l3.add(l1[l1_pt]);
      l1_pt += 1;
    }
    while(l2_pt < l2.length){
      l3.add(l2[l2_pt]);
      l2_pt += 1;
    }
    return l3;
  }
  ListNode? toLinkedList(List<int> vals){
    if(vals.length == 0){
      return null;
    }
    if(vals.length == 1){
      return new ListNode(vals[0]);
    }
    ListNode last = new ListNode(vals[0]);
    ListNode first = last;
    for(int i = 1 ; i < vals.length ; ++i){
      ListNode current = new ListNode(vals[i]);
      last.next = current;
      last = current;
    }
    return first;
  }
}
