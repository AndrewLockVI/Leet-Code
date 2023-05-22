//Given a binary tree the values after performing a preorder
//traversal and then reorganizing the tree so that the preorder
//values are all placed on the right side similar to a linked list.
//To do this I iterated through the tree adding each node to the list
//as I went (pre-order). I then created a new binary tree reusing the root
//where each right value was the next value in the list.
//Time: 285ms Beats: 100%
//Memory: 143.8MB Beats: 50%

class Solution {
  List<int> vals = [];
  void flatten(TreeNode? root) {
      recurse(root);
      root?.left = null;
      TreeNode? itr = root;
      for(int i = 1 ; i < vals.length ; ++i){
          itr?.right = new TreeNode(vals[i]);
          itr = itr?.right;
      }

  }
  void recurse(TreeNode? root){
      if(root == null){
          return;
      }
      vals.add(root.val);
      recurse(root.left);
      recurse(root.right);
  }
}
