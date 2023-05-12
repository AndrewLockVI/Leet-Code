//This is a working implementation of the traveler problem
//also known as unique paths on leetcode. Basically find all paths
//from the top left to the bottom right of the board.
//My solution uses memoization to remember how many paths a given
//shape (m*n) rectangle has from top left to bottom right and then returning that to the previous iteration.
//I also had to use string concatenation as keys because lists can't be used
//as keys in dart because it is a pointer to the list not the values themselves. (Headache)
//The time complexity of this code is O(m*n).
//Time: 251ms Beats: 70.79%
//Memory: 144.4MB Beats: 23.53%

class Solution {
  Map<String , int> blocks_solved = {};
  int paths = 0;
  int uniquePaths(int m, int n) {
    String m_str = m.toString();
    String n_str = n.toString();
    if(blocks_solved[m_str + " " + n_str] != null){
      return (blocks_solved[m_str + " " + n_str] ?? 0);
    }
    if(blocks_solved[n_str + " " + m_str] != null){
      return (blocks_solved[n_str + " " + m_str] ?? 0);
    }
    int block_val = 0;
    if(m == 1 || n == 1){
      return 1;
    }
    if(m > 1){
      block_val += uniquePaths(m - 1, n);
    }
    if(n > 1){
      block_val += uniquePaths(m , n - 1);
    }
    blocks_solved[m_str + " " + n_str] = block_val;
    return block_val;
  }
}
