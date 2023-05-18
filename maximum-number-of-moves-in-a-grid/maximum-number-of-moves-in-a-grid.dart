//Find the maximum number of moves that can be made for a grid starting from the first column where you can only move to the right and
//either move up by one down by one or stay in the same position vertically. The time complexity of my code is (O(n) where n is the number of 
//tiles in the matrix because each time a location is traversed then it's value is remembered thus not requiring revisitation.
//Time: 575MS Beats: 100%
//Memory: 192.7MB Beats: 100%
class Solution {
  Map<String , int> memo = {};
  int maxMoves(List<List<int>> grid) {
    int max = 0;
    for(int i = 0 ; i < grid.length ; ++i){
      int current = maxFromPos(grid, [i , 0]);
      if(current - 1 > max){
        max = current - 1;
      }
    }
    return max;
  }

  int maxFromPos(List<List<int>> grid, List<int> current_position){
      if(current_position[1] == grid[0].length - 1){
          return 1;
      }
      String curr_str = current_position[0].toString() + " " + current_position[1].toString();
      if(memo.containsKey(curr_str)){
        int curr_val = (memo[curr_str] ?? 0);
        return curr_val;
      }
      int current_val = grid[current_position[0]][current_position[1]];
      int max = 0;
      if(current_position[0] == 0){
          List<int> right = [current_position[0], current_position[1] + 1]; 
          if(grid[right[0]][right[1]] > current_val){
            max = maxFromPos(grid, right);
          }
          List<int> down = [current_position[0] + 1, current_position[1] + 1];
          if(grid[down[0]][down[1]] > current_val){
            int down_val = maxFromPos(grid,down);
            if(down_val > max){
                max = down_val;
            }
          }
      }
      else if(current_position[0] == grid.length - 1){
          List<int> up = [current_position[0] - 1, current_position[1] + 1];
          if(grid[up[0]][up[1]] > current_val){
            max = maxFromPos(grid, up);
          }
          List<int> right = [current_position[0], current_position[1] + 1]; 
          if(grid[right[0]][right[1]] > current_val){
            int right_val = maxFromPos(grid,right);
            if(right_val > max){
                max = right_val;
            }
          }
      }
      else{
          List<int> up = [current_position[0] - 1, current_position[1] + 1];
          if(grid[up[0]][up[1]] > current_val){
            max = maxFromPos(grid, up);
          }
          List<int> right = [current_position[0], current_position[1] + 1]; 
          if(grid[right[0]][right[1]] > current_val){
            int right_val = maxFromPos(grid,right);
            if(right_val > max){
                max = right_val;
            }
          }
            List<int> down = [current_position[0] + 1, current_position[1] + 1];
            if(grid[down[0]][down[1]] > current_val){
              int down_val = maxFromPos(grid,down);
              if(down_val > max){
                  max = down_val;
              }
            }
      }
      memo[curr_str] = max + 1;
      return max + 1;
  }
}
