//Convert the given linked list to a height-balanced
//binary tree. To do this I converted the linked list to an array
//then converted the array to a binary search tree. The time complexity
//of this is O(nlog(n)). 
//Time: 289ms Beats: 77.78%
//Memory: 147.5MB Beats: 5.56%

/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  TreeNode? sortedListToBST(ListNode? head) {
    List<int> vals = [];
    while(head != null){
      vals.add(head.val);
      head = head.next;
    }
    TreeNode? return_tree = createBST(vals);
    return return_tree;
  }

  TreeNode? createBST(nums){
    if(nums.isEmpty){
      return null;
    }
    int mid = (nums.length / 2).toInt();
    TreeNode root = new TreeNode();
    root.val = nums[mid];
    root.left = createBST(nums.sublist(0 , mid));
    root.right = createBST(nums.sublist(mid + 1));
    return root;
  }


}
