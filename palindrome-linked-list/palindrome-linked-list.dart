//Find if the values contained within a linked list are a palindrome.
//To do this I iterated through the list putting all of the values into
//an array and then at the end I checked to make sure the second half of the 
//array was the same as the first half.
//The time complexity of this is O(n) where n is the number of nodes in the list.

//Runtime: 339ms Beats: 68.25%
//Memory: 208.8MB Beats: 17.46%


/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  bool isPalindrome(ListNode? head) {
      if(head?.next == null){
          return true;
      }

      List<int> nums = [];
      while(true){
          if(head == null){
              break;
          }
          nums.add(head?.val ?? 0);
          head = head?.next;
      }
      
      for(int i = 0 ; i < (nums.length / 2).ceil() ; ++i){
          if(nums[i] == nums[nums.length - 1 - i]){
              continue;
          }
          else{
              return false;
          }
      }

      return true;
  }
}
