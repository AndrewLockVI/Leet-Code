//Remove all nodes of the linked list where the value
//stored is equal to the value val that is passed as
//an input to the function. Then return the head of the list
//My solution iterates through the list checking if a node
//is equal to the value passed in. If it is then the refrence
//to the previous node sets it's pointer to the next node after the current thus 
//cutting it out of the list. Given this implementation
//the time compexity of this is O(n) where n is the number
//of elements in the linked list.
//Time: 75ms Beats: 70.73%
//Memory: 46.4MB Beats: 78.22%

/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} head
 * @param {number} val
 * @return {ListNode}
 */
var removeElements = function(head, val) {
    let itr = head;
    let itr1 = new ListNode();

    while(head?.val == val || head == null){
        if(head == null){
            return null;
        }
        else{
            head = head.next;
        }
    }


    while(itr != null){
        if(itr.val == val){
            itr1.next = itr.next;
            itr = itr1;
        }
            itr1 = itr;
            itr = itr.next;
        }
    

    return head;
};
