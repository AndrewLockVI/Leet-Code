//Given a binary tree find the average of each
//level and return the averages as a list.
//To do this I used BFS by adding up all of the values
//on a given level then dividing by the number of nodes.
//I then repeated this for all layers.
//Time: 259ms Beats: 100%
//Memory: 144.2MB Beats: 50%
class Solution {
  List<double> averageOfLevels(TreeNode? root) {
      List<TreeNode?> queue = [];
      queue.add(root);
      List<double> medians = [];
      while(queue.length != 0){
          int layer_val = 0;
          int init_length = queue.length;
          for(int i = 0 ; i < init_length ; ++i){
              layer_val += (queue[i]?.val ?? 0);
              if(queue[i]?.right != null){
                queue.add(queue[i]?.right);
              }
              if(queue[i]?.left != null){
                queue.add(queue[i]?.left);
              }
          }
          medians.add(layer_val / init_length);
          queue = queue.sublist(init_length);
      }
      return medians;
  }
}
