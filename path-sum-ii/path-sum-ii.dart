//Given a binary tree return every path that adds up to the target sum.
//To do this I recursively called the function for branch to see if from root to leaf
//added up to the target sum if it did I returned that value back to the parent each time adding
//on the current value to the list.
//Time: 292ms Beats: 77.78%
//Memory: 143.7MB Beats: 77.78%

class Solution {
  List<List<int>> pathSum(TreeNode? root, int targetSum) {
      if(root == null){
          return [];
      }
      if(targetSum == (root.val) && root.left == null && root.right == null){
          return [[root.val]];
      }
      List<List<int>> list = pathSum(root.left, targetSum - root.val);
      list += pathSum(root.right, targetSum - root.val);
      for(int i = 0 ; i < list.length ; ++i){
          list[i].insert(0,root.val);
      }
      return list;
  }
}
