//This is a recursive solution to print out the values
//in a binary tree inorder. The time complexity of this
//is O(n) where n is the number of nodes in the tree.
//Runtime:274ms Beats: 43.59%
//Memory: 139.9MB Beats: 69.23%

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
}

class Solution {
  List<int> vals = [];
  List<int> inorderTraversal(TreeNode? root) {
      recurse(root);
      return vals;
  }

 void recurse(TreeNode? node){
     if(node == null){
         return;
     }
     recurse(node.left);
     vals.add(node.val);
     recurse(node.right);
 }
}
