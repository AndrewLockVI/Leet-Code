//Find the sum of all leaves that are left of their parent.
//to do this I used DFS to recurse through the list and if the current node is 
//a leaf it checks if it is left. If it is a left leaf then the stored value of it is
//added onto the total integer. The time complexity of this code is O(n) where n is the number
//of nodes in the tree. 
//Runtime: 266ms Beats: 100%
//Memory: 142.3MB Beats: 100%


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
  int total = 0;
  int sumOfLeftLeaves(TreeNode? root) {
      recurse(root ?? new TreeNode(), false);
      return total;
  }
  
  void recurse(TreeNode node, bool is_left ){
      if(node.left != null){
          recurse(node.left ?? new TreeNode(), true);
      }
      if(node.right != null){
          recurse(node.right ?? new TreeNode(), false);
      }
      if(is_left && node.right == null && node.left == null){
          total += node.val;
      }
  }

}
