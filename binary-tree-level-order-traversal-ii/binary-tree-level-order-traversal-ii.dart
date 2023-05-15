//Given a binary tree traverse it layer by layer (BFS)
//and return the reverse order of the layers meaning from
//bottom to top left to right.
//The time complexity of this code is O(n) where n is the length
//of the linked list. The only way to optimize this would be to
//use some form of constant time queue as opposed to using sublist
//which takes O(n) time each time.
//Time: 246ms Beats: 100%
//Memory: 142.5MB Beats: 100%
class Solution {
  List<List<int>> levelOrderBottom(TreeNode? root) {
      if(root == null){
          return [];
      }
      List<TreeNode?> queue = [];        
      queue.add(root);
      List<List<int>> forward_order = [];
      while(queue.length > 0){
          int init_length = queue.length;
          for(int i = 0 ; i < init_length ; ++i){
              TreeNode? current = queue[i];
              if(current?.left != null){
                  queue.add(current?.left);
              }
              if(current?.right != null){
                  queue.add(current?.right);
              }
          }
          List<int> subl = [];
          for(int i = 0 ; i < init_length ; ++i){
            subl.add(queue[i]?.val ?? 0);
          }
          forward_order.add(subl);
          queue = queue.sublist(init_length);
      }
      return forward_order.reversed.toList();
    }
}
