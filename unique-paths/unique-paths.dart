//Find all unique paths to reach the bottom right corner if you start at the top left.
//Return the total number of paths as an intgeer. This solution is 2^n time complexity 
//and gives a TLE on leetcode. I will improve upon this in my next iteration.

class Solution {
  int uniquePaths(int m, int n) {
      List<List<int>> queue = [[0,0]];
      int path_options = 0;
      while(queue.length != 0){
            int i = queue.length - 1;
            List<int> current = queue[i];
            queue.removeLast();
            if(current[0] < m){
                List<int> next = [current[0] + 1 , current[1]];
                queue.add(next);
            }
            if(current[1] < n - 1){
                List<int> next_val = [current[0] , current[1] + 1];
                queue.add(next_val);
            }
            if(current[0] == m-1 && current[1] == n-1){
                path_options += 1;
            }
      }
      return path_options;
  }
}
