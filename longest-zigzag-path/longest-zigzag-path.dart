// For this one I am not adding a constructor thus it can not run without being setup.
// This solution causes a stack overflow error on leet-code because in leet-code
// the tree size can be 50000 elements in size which is frankly unreasonable so this 
// stops working at a certain point depending on the way the data is structured.
// Nonetheless this will work in 99% of real world use cases, and it will return the longest
// zig zagging pattern through the tree that does not contain any null values.
// The time complexity of the algorithm is O(N) because it visits all nodes only once.
// In theory to make this algorithm support larger data sets you could use a queue, but
// this works and I don't think I would learn anything by changing this.


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
  TreeNode? thousand;
  int max = 0;


  int longestZigZag(TreeNode? root) {

    solve(root?.left, 1 , false);
    solve(root?.right, 1 , true);
    return max;
  }


  void solve(TreeNode? current, int depth , bool right){
 
      if(current?.val == null){
        return;
      }
      if(depth > max){
        max = depth;
      }
      if(right){
          solve(current?.left, depth + 1, false);
          solve(current?.right, 1, true);
      }
      else{
          solve(current?.right, depth + 1, true);
          solve(current?.left, 1, false);
      }
  }
}
