//Return the preordered list of a binary tree.
//A preorder of a tree is the root then the next 
//node on the left and so on until the bottom until you
//return the right and so on.
//The time complexity of this code is O(n) where n is the number
//of nodes.
//Time: 264ms Beats: 50%
//Memory: 142.4MB Beats: 10%
class Solution {
  List<int> vals = [];
  List<int> preorderTraversal(TreeNode? root) {
      recurse(root);
      return vals;
  }

  void recurse(TreeNode? root){
      if(root == null){
          return;
      }
      vals.add((root?.val ?? 0));
      recurse(root?.left);
      recurse(root?.right);


  }
}
