//Given a matrix of 1's and 0's return 
//the shortest path from 0,0 to the bottom right
//of the grid. To do this I used DFS and recursion with
//memoization. This is too slow however because the correct
//way to do these types of searches is with queues either
//BFS or djikstra with a priority queue (heap)
//Time: TLE
//Memory: TLE
class Solution {
  int shortestPathBinaryMatrix(List<List<int>> grid) {
      return traverse(grid, [0,0], 1, {});
  }
  int traverse(List<List<int>> grid, List<int> position, int depth, Map<String,int> memo){
      int posx = position[0];
      int posy = position[1];
      if(grid[posx][posy] == 1){
          return -1;
      }
      if(posx == grid.length - 1 && posy == grid[0].length - 1){
          return depth;
      }
      String current_str = posx.toString() + ' ' + posy.toString();
      if(memo.containsKey(current_str)){
          if((memo[current_str] ?? 0) <= depth){
              return -1;
          }
      }
      memo[current_str] = depth;
      int return_int = -1;
      for(int i = -1 ; i <= 1 ; ++i){
          for(int x = -1 ; x <= 1 ; ++x){
              int newx = posx + i;
              int newy = posy + x;
              if(newx < 0 || newy < 0 || newx >= grid.length || newy >= grid[0].length || (x == 0 && i == 0)){
                  continue;
              }
              int current = traverse(grid, [newx, newy] , depth + 1, memo);
              if(current != -1){
                  if(current < return_int || return_int == -1){
                      return_int = current;
                  }
              }
          }
      }
      return return_int;
  }
}
