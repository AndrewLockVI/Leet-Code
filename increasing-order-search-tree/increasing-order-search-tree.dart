//Given a tree return the inorder traversal as a binary tree
//where all elements are in order to the right.

//Ex.
//  2
// 1 3
//Output:
//1
// 2
//  3

//My solution does an inorder traversal first then builds
//a new tree that does the O(n) search tree creation.
//Time: 269ms Beats: 100%
//Memory: 142.8MB

class Solution {
  TreeNode? increasingBST(TreeNode? root) {
      List<int> treeVals = [];
      traverse(root,treeVals);
      root = new TreeNode(treeVals[0]);
      treeVals.removeAt(0);
      return stupidTree(root,treeVals);
     
  }
  TreeNode? stupidTree(TreeNode? root, List<int> treeVals){
    if(treeVals.length == 0){
      return root;
    }
    root?.right = TreeNode(treeVals[0]);
    treeVals.removeAt(0);
    stupidTree(root?.right, treeVals);
    return root;
  }
  void traverse(TreeNode? root, List<int> treeVals){
      if(root != null){
        traverse(root.left, treeVals);
        treeVals.add(root.val);
        traverse(root.right, treeVals);
      }
  }
}
