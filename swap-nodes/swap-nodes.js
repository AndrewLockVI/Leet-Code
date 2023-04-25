//Swap nodes that are next to each other. Ex.
//[x1 , y1 , x2 , y3] -> [y1 , x1 , y2, x2]
//This solution has a time compexity of O(n) where n
//is the length of the linked list.


/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} head
 * @return {ListNode}
 */
var swapPairs = function(head) {
    if(head == null){
        return head;
    }
    if(head.next == null){
        return head;
    }  
    let itr1 = head;
    let itr2 = head?.next;
    while(itr2 != null){
        let temp = itr1.val;
        itr1.val = itr2.val;
        itr2.val = temp;
        itr1 = itr2?.next;
        itr2 = itr1?.next;
    }
    return head;
};
