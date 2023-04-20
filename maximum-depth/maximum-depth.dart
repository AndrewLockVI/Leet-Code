//This algorithm does a DFS search of the tree to find
//how deep the tree goes. The time complexity of this is
//O(n) where n is the number of tree nodes.

//Runtime: 271ms Beats: 63.27%
//Memory: 143.6MB Beats: 24.49%



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
  int max = 0;
  int maxDepth(TreeNode? root) {
      recurse(root , 1);
      return max;
  }
  void recurse(TreeNode? node , int depth){
      if(node == null){
          return;
      }
      if(depth > max){
          max = depth;
      }
      recurse(node.left, depth + 1);
      recurse(node.right , depth + 1);
  }
}
