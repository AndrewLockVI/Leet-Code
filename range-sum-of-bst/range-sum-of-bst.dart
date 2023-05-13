//Take in three inputs where the first is the root of a tree, the second is the lowest value to add, and
//the third is the highest value to add. Given this traverse the tree and return the sum of all values
//between low and high.
//The time complexity of this code is O(n) where n is the number of nodes. 
//My solution uses recursion and an inorder BFS algorithm.
//Time: 295ms Beats: 80%
//Memory: 164.7MB Beats: 10%
class Solution {

  int rangeSumBST(TreeNode? root, int low, int high) {
      if(root== null){
          return 0;
      }
      int sum = rangeSumBST(root.left, low, high);
      sum += rangeSumBST(root.right, low, high);
      if((root.val) >= low && (root.val) <= high){
          sum += (root.val);
      }
      return sum;
  }
}
