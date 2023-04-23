//Merge two sorted lists together and return the resulting singly linked list.
//The time complexity of this algorithm is O(n) where n is the length of both
//the lists combined. 
//Runtime: 60ms Beats: 88.75%
//Memory: 44.1MB Beats: 54.16%

/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} list1
 * @param {ListNode} list2
 * @return {ListNode}
 */
var mergeTwoLists = function(list1, list2) {



    if(list1 == null && list2 == null){
        return null;
    }
    if(list1 == null){
        return list2;
    }
    if(list2 == null){
        return list1;
    }
    const merged_list = new ListNode();    
    var itr = merged_list;
    var itr1 = new ListNode();
    while(list1 != null && list2 != null){
        itr1 = new ListNode();
        itr.next = itr1;
        if(list1.val < list2.val){
            itr.val = list1.val;
            list1 = list1.next;
        }
        else{
            itr.val = list2.val;
            list2 = list2.next;
        }
        itr = itr1;
    }

    while(list1 != null){
        if(list1.next != null){
            itr1 = new ListNode();
            itr.next = itr1;
            itr.val = list1.val;
            list1 = list1.next;
            itr = itr1;
        }
        else{
            itr.val = list1.val;
            break;
        }
    }
    while(list2 != null){
        if(list2.next != null){
        itr.next = itr1;
        itr1 = new ListNode();
        itr.val = list2.val;
        list2 = list2.next;
        itr.next = itr1;
        itr = itr1;
        }
        else{
            itr.val = list2.val;
            break;
        }
    }
    return merged_list;
};
