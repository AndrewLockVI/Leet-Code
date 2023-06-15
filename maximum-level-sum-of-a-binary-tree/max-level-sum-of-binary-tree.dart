//Given a binary tree return the layer with the greatest 
//value where the value is the sum of all nodes on that layer.

//First I did DFS to create a layer list. Normally people do this with
//BFS, but leetcode does not have priority queues in dart so this is technically faster.
//Then from there I found the layer with the highest sum and returned the index of it + 1.

//Time: 393ms Beats: 100%
//Memory: 181.5MB Beats: 100%

class Solution {
    List<List<int>> layers = [];
  int maxLevelSum(TreeNode? root) {
      recurse(0, root);
      int max = -200000000;
      int max_layer = 1;
      int layer_count = 1;
      print(layers);
      for(var list in layers){
          int current = 0;
          for(int val in list){
              current += val;
          }
          if(current > max){
              max = current;
              max_layer = layer_count;
          }
          layer_count += 1;
      }
      return max_layer;
  }

  void recurse(int depth, TreeNode? root){
      if(root == null){
          return;
      }
      if(depth >= layers.length){
          layers.add([]);
      }
      layers[depth].add(root.val);
      recurse(depth+ 1 ,root.left);
      recurse(depth + 1 ,root.right);
  }
}
