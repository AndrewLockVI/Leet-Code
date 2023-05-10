//Given the root of a binary tree return all of the values
//contained within the nodes if someone were looking at the tree from the right side.
//Ex:
//      1 <-
//     2 3 <-
//    3 4 <-
//   6 <-
//    4 <-
//The time complexity of this code is O(n) where n is the
//number of nodes in the list. My solution uses BFS and after
//each layer is traversed it returns the rightmost node's value.
//Time: 293ms Beats: 50%
//Memory: 145MB Beats: 100%

class Solution {
  List<int> rightSideView(TreeNode? root) {
    if(root == null){
      return [];
    }
      List<TreeNode?> queue = [];
      queue.add(root);
      List<int> return_list = [];
      return_list.add(root?.val ?? 0);
      while(queue.length != 0){
        int init_length = queue.length;
        for(int i = 0 ; i < init_length ; ++i){
          
          if(queue[0]?.left != null){
            queue.add(queue[0]?.left);
          }
          if(queue[0]?.right != null){
            queue.add(queue[0]?.right);
          }
          queue.removeAt(0);
        }
        if(queue.length != 0){
          return_list.add((queue[queue.length - 1]?.val ?? 0));
        }
      }
      return return_list;
  }
}
