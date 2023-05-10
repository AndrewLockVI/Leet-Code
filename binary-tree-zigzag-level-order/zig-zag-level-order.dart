//Traverse a binary tree and return a list that contains
//one list for each layer. As you make your way down the tree
//start going from left to right and then from right to left and so on.
//The time complexity of this code is O(n) where n is the 
//number of nodes in the tree.
//Time: 264ms Beats: 63.64%
//Memory: 143.1MB Beats: 54.55%

/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  List<List<int>> zigzagLevelOrder(TreeNode? root) {
      if(root == null){
          return [];
      }
      List<TreeNode?> queue = [];
      List<List<int>> return_list = [];
      queue.add(root);
      int row = 0;
      while(queue.length > 0){
          return_list.add([]);
        int init_length = queue.length;
        for(int i = 0 ; i < init_length ; ++i){
            if(queue[0]?.left != null){
                queue.add(queue[0]?.left);
            }
            if(queue[0]?.right != null){
                queue.add(queue[0]?.right);
            }
            return_list[return_list.length - 1].add((queue[0]?.val ?? 0));
            queue.removeAt(0);
        }
        row += 1;
      }

      for(int i = 1 ; i < return_list.length ; i += 2){
          return_list[i] = return_list[i].reversed.toList();
      }



      return return_list;

  }

}
