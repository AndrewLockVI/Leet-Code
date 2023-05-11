//Return true if the binary search tree is valid and false
//if it is not.
//To tell if it is valid verify that the left node is always
//less than the root node, and the right node is always greater than
//the root node.
//My solution uses an inorder search of the tree to first get a list
//of the nodes in order. Then, I go through the list checking if they are 
//actually in order and if they are not return false.
//The time complexity of this code is O(n) where n is the number
//of nodes in the list.
//Time: 294MB Beats: 40.91%
//Memory: 146.6MB Beats: 15.91%
class Solution {
  List<int> order_vals = [];
  bool isValidBST(TreeNode? root) {
      recurse(root);
      int last = order_vals[0];
      for(int i = 1 ; i < order_vals.length ; ++i){
          if(order_vals[i] <= last){
              return false;
          }
          last = order_vals[i];
      }
      return true;

  }
  void recurse(TreeNode? root){
      if(root == null){
          return;
      }
      recurse(root.left);
      order_vals.add((root?.val ?? 0));
      recurse(root.right);
  }
}
