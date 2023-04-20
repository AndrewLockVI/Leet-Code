//This is a leetcode hard problem where you need to merge K sorted lists together.
//To do this I first changed the linked lists to arrays. I then went through each array
//and merged them to one array that was sorted. From there I then merged them together into
//a singly linked list. The time complexity of this is O(nlog(n)) where n is the number of total items in all
//of the lists. This is because the sorting algorithm bumps it up from O(n).
//To optimize this I really should have just iterated through the linked lists pulling out
//the values that were the lowest into a new list and then returned that. This would still be an O(nlog(n))
//algorithm but would execute much faster due to decreased overhead.
//Runtime:682ms Beats:16.92%
//Memory: 147.3MB Beats: 75.38%



/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? mergeKLists(List<ListNode?> lists) {

    List<List<int>> sort_list = [];
    for(int i = 0 ; i < lists.length; ++i){
      sort_list.add(<int>[]);
    }
    int count = 1;
    for(int i = 0 ; i < lists.length ; ++i){
        while(true){
            if(lists[i] == null){
                break;
            }
            sort_list[i].add(lists[i]?.val ?? 0);
            lists[i] = lists[i]?.next;
            count += 1;
        }
    }
    List<int> sorted_vals = [];
    int lowest_num = 0;
    int index = 0;
    int first_list = 0;
    for(int i = 0 ; i < count + 1 ; ++i){
      try{
        lowest_num = sort_list[first_list][0];
      }
      catch(exception){
        first_list += 1;
        i -= 1;
        continue;
      }
      index = first_list;
      for(int x = 1 ; x < lists.length; ++x){
        if(sort_list[x].isEmpty){
          continue;
        }
         int current = sort_list[x][0];
         if(current < lowest_num){
           lowest_num = current;
           index = x;
         }
      }
      sort_list[index].removeAt(0);
      sorted_vals.add(lowest_num);
    }
    if(sorted_vals.length == 0){
      return null;
    }
    ListNode head = new ListNode();
    head.val = sorted_vals[0];
    ListNode itr = head;
    ListNode next;
    for(int i = 1 ; i < sorted_vals.length; ++i){
        next = new ListNode();
        next.val = sorted_vals[i];
        itr.next = next;
        itr = next;
    }

    return head;
  }
}
