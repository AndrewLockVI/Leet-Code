//Return a list of values in post order.
//Post order is from bottom to top and left to right.
//As such it would go bottom left, bottom right, root if there were three values.
//The time complexity of this code is O(n) where n is the number of nodes in the tree.
//Time: 255ms Beats: 63.16%
//Memory: 142.3MB Beats: 5.26%

class Solution {
  List<int> vals = [];
  List<int> postorderTraversal(TreeNode? root) {
      recurse(root);
      return vals;
  }

  void recurse(TreeNode? root){
      if(root == null){
          return;
      }
      recurse(root?.left);
      recurse(root?.right);
      vals.add(root.val);
  }
}
