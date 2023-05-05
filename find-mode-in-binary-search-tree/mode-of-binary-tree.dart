//Given a binary search tree find the mode value(s) and
//return it in a list. To solve this problem I iterated through
//the tree and added each value to a map where the value was the number
//of instances of a given number. Then I iterated through the map
//to find the value with the highest number of occurences and returned 
//the associated key.
//The time complexity of this code is O(n) where n is the number of nodes.
//Time: 307ms Beats: 100%
//Memory: 145.7MB Beats: 100%
//Not enough submissions for comparsion metrics.

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
  List<int> findMode(TreeNode? root) {
      int usages = 0;
      List<int> return_vals = [0];
      recurse(root);
      for(var entries in vals.entries){
          if(entries.value > usages){
              usages = entries.value;
              return_vals = [entries.key];
          }
          else if(entries.value == usages){
              return_vals.add(entries.key);
          }
      }
      return return_vals;
  }
  Map<int, int> vals = {};

  void recurse(TreeNode? root){
      if(root == null){
          return;
      }
      vals[root.val] = (vals[root.val] ?? 0) + 1;
      recurse(root.left);
      recurse(root.right);
  }
}
