//Find if a linked list contains a refrence to another node in the list.
//This would create a circular refrence thus it would have no end.
//To find this I created a set and then for each node checked to see
//if it existed in the set. If it does exist in the set then the list is
//circular because that would mean a refrence to another node is used multiple times
//in the list. The time complexity of this is O(n) because I used a set which
//has constant time searching.
//Time: 71ms Beats: 69.27%
//Memory: 46.3MB Beats: 5.82%

/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */

/**
 * @param {ListNode} head
 * @return {boolean}
 */
var hasCycle = function(head) {
    let node_map = new Set();
    while(head != null){
        if(node_map.has(head)){
            return true;
        }
        else{
            node_map.add(head);
        }
        head = head.next;
    }
    return false;
};
