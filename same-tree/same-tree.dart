//Iterate through tree and determine if it is equal to 
//another tree. This algorithm has a worst case time complexity of
//O(n) where n is the length of the list. Because for
//each node it is visited one time and then each node
//is again compared to the corresponding node from the
//other tree.
//Runtime: 262ms Beats: 50%
//Memory: 142.6MB Beats: 43.75%

class TreeNode{
    int val;
    TreeNode? left;
    TreeNode? right;
}

class Solution {
  List<int?> l1 = [];
  List<int?> l2 = [];
  bool isSameTree(TreeNode? p, TreeNode? q) {
    recurse(p , 1);
    recurse(q , 2);
    if(l2.length != l1.length){
        return false;
    }
    bool equal = true;
      for(int i = 0; i < l1.length ; ++i){
        if(l1[i] != l2[i]){
          equal = false;
          break;
      }
  }
      return equal;
  }
  void recurse(TreeNode? node, int list_num){

      if(node == null){
          if(list_num == 1){
              l1.add(null);
          }
          else{
              l2.add(null);
          }
          return;
      }
      recurse(node.left , list_num);
      recurse(node.right, list_num);
      if(list_num == 1){
          l1.add(node.val);
      }
      else{
          l2.add(node.val);
      }
  }
}
