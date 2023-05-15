//Find the path from the top left to bottom right that
//has to lowest possible sum. To do this I used DP with
//recursion and memoization to remember the lowest possible
//values for each spot on the board.
//Time: 255ms Beats: 93.75%
//Memory: 143.7MB Beats: 75%

class Solution {
  int minPathSum(List<List<int>> grid) {
      return recurse(grid , [0,0], {});
  }


  int recurse(List<List<int>> grid , List<int> position, Map<String,int> memo){
      int xpos = position[0];
      int ypos = position[1];
      String current_str = xpos.toString() + " " + ypos.toString();
      if(memo.containsKey(current_str)){
        int return_val = memo[current_str] ?? 0;
        return return_val;
      }

      if(xpos == grid.length - 1 && ypos == grid[0].length - 1){
          return grid[xpos][ypos];
      }
      int down = 1000000;
      int right = 1000000;
      if(xpos < grid.length - 1){
        right = recurse(grid, [xpos + 1 , ypos], memo);
      }
      if(ypos < grid[0].length - 1){
        down = recurse(grid, [xpos , ypos + 1], memo);
      }
      int return_int = 0;
      if(down < right){
          return_int =  down + grid[xpos][ypos];
      }
      else{
          return_int = right + grid[xpos][ypos];
      } 
      memo[current_str] = return_int;
      return(return_int);

  }
}
