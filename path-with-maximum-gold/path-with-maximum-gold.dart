//This solution uses recursion to traverse through a matrix where each tile has gold and the 
//player can only move one tile at a time. You need to return the highest amount of gold that can be 
//collected without ever stepping on a spot that has 0 gold.
//The time complexity of this code is O(4^n) where n is the number of values in the matrix.
//Time: 1510ms Beats: 100%
//Memory: 181.6MB Beats: 100%
class Solution {
  int getMaximumGold(List<List<int>> grid) {
      int max = 0;
      for(int i = 0 ; i < grid.length ; ++i){
          for(int x = 0 ; x < grid[i].length ; ++x){
              int current = getMax(grid, [i,x]);
              if(current > max){
                  max = current;
              }
          }
      }
      return max;
  }

  int getMax(List<List<int>> grid, List<int> current_pos){
      if(current_pos[0] >= grid.length || current_pos[0] < 0){
          return 0;
      }
      if(current_pos[1] >= grid[0].length || current_pos[1] < 0){
          return 0;
      }
      if(grid[current_pos[0]][current_pos[1]] == 0){
          return 0;
      }
      int current_val = grid[current_pos[0]][current_pos[1]];
      List<List<int>> new_grid = [];
      for(int i = 0 ; i < grid.length ; ++i){
          new_grid.add(List.from(grid[i]));
      }
      new_grid[current_pos[0]][current_pos[1]] = 0;
      int left = getMax(new_grid, [current_pos[0] -1 , current_pos[1]]);
      int right = getMax(new_grid, [current_pos[0] +1, current_pos[1]]);
      int up = getMax(new_grid, [current_pos[0] , current_pos[1] + 1]);
      int down = getMax(new_grid, [current_pos[0] , current_pos[1] - 1]);
      List<int> ls1 = [left,right,up,down];
      int max = 0;
      for(int i = 0 ; i < ls1.length ; ++i){
          if(ls1[i] > max){
              max = ls1[i];
          }
      }
      return current_val + max;
      
  }
}
