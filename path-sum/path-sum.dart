//Find if there is a path down a binary tree where all of the vals
//added together is equal to the targetSum. 
//The time complexity of this is O(n) because in the worst case 
//the algorithm will visit all nodes.
//Time: 298ms Beats: 61.11%
//Memory: 146.4MB Beats:16.67%

class Solution {
  int goal = 0;
  bool found = false;
  bool hasPathSum(TreeNode? root, int targetSum) {
      goal = targetSum;
      recurse(root, 0);
      return found;
  }
  void recurse(TreeNode? node, int current_val){
      current_val += node?.val ?? 0;
      if(node == null){
          return;
      }
      if(found == true){
          return;
      }
      if(current_val == goal && node.left == null && node.right == null){
          found = true;
          return;
      }
      recurse(node?.left , current_val);
      recurse(node?.right, current_val);
  }
}
