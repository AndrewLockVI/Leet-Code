//Given the root of a binary tree find all permutations of the binary tree that add up to 
//a given number and return that value. To do this I used recursion,
//dynamic programming, and memoization to create branches for each node.
//Time: 1612ms Beats: 100%
//Memory: 168.9MB Beats: 100%
//To improve on this I will incorporate more memoization to make
//all explored nodes be memoized thus cutting on time.
class Solution {
  int? original_val;
  Map<TreeNode? , List<int>> vals = {};
  int pathSum(TreeNode? root, int targetSum) {
    return(get_paths(root,targetSum,0));
  }
int get_paths(TreeNode? root, int targetSum, int depth){
    if(vals.containsKey(root)){
      List<int> depth_list = (vals[root] ?? []);
      if(depth_list.contains(depth)){
        return 0;
      }
    }
    if(original_val == null){
      original_val = targetSum;
    }
    if(root == null){
        return 0;
    }
    int paths = 0;
    if(targetSum == root.val){
      if(vals[root] != null){
        if((vals[root]?.contains(depth)) ?? false){
          paths += 0;
        }
        else{
          paths += 1;
          vals[root]?.add(depth);
        }
      }
      else{
        paths += 1;
        vals[root] = [depth];
      }
    }
    if(targetSum != (original_val ?? 0)){
      paths += get_paths(root.left , targetSum - root.val, depth + 1);
      paths += get_paths(root.right , targetSum - root.val, depth + 1);
    }
    else{
      paths += get_paths(root.left , (original_val ?? 0), 0);
      paths += get_paths(root.right , (original_val ?? 0) , 0);
      paths += get_paths(root.left , targetSum - root.val , depth + 1);
      paths += get_paths(root.right , targetSum - root.val, depth + 1);
    }
    return paths;
  }
}
