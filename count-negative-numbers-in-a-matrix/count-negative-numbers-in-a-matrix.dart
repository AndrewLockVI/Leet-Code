//Given a grid of columnally sorted values return the number
//of negative values. This is a brute force solution, but is also
//nearly as good as an opomized one.

//Ex input:
//4 0 -3
//3 -1
//2 -2

class Solution {
  int countNegatives(List<List<int>> grid) {
      int count = 0; 
      for(int i = grid.length - 1; i >= 0 ; --i){
          for(int x = grid[i].length - 1; x >= 0 ; --x){
              if(grid[i][x] < 0){
                  count += 1;
                  continue;
              }
              break;
          }
      }
      return count;
  }
}
