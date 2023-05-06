//Find all paths to every leaf in a binary tree and return them as a string.
//The time complexity of this code is O(n) where n is the number of nodes in the tree.
//Time: 261ms Beats: 100%
//Memory: 142.6MB Beats: 100%

class Solution {
  List<String> binaryTreePaths(TreeNode? root) {
      recurse(root, "");
      return leaves;
  }
  List<String> leaves = [];
  void recurse(TreeNode? root , String path){
      String add = "->";
        if(path == ""){
            add = "";
        }
      if(root?.left == null && root?.right == null){
          path += add + (root?.val ?? 0).toString();
          leaves.add(path);
          return;
      }
      else{

          if(root?.right != null){
            recurse(root?.right , path + add + (root?.val ?? 0).toString());              
          }
          if(root?.left != null){
            recurse(root?.left, path + add + (root?.val ?? 0).toString());
              
          }
      }
  }
}
