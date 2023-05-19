//Find the minimum time required to make it from the top
//left to the bottom right of a matrix assuming you can
//only move to a space if the current step number is greater than
//or equal to the value in the tile.
//The problem with this solution is with big numbers this
//recursive solution has to recurse very far. As such this gives a stack 
//overflow error.
//Time: N/A
//Memory: N/A
class Solution {
  int minimumTime(List<List<int>> grid) {
      return recurse(grid, [0,0] , 0);
  }

  int recurse(List<List<int>> grid, List<int> current_position, int step){
      int currentx = current_position[0];
      int currenty = current_position[1];
      int current_val = grid[currentx][currenty];
      if(current_val > step){
          return -1;
      }

      if(currentx == grid.length - 1 && currenty == grid[currentx].length - 1){
          return 0;
      }
      int shortest_path = -1;
      if(currentx != grid.length - 1){
          shortest_path = recurse(grid , [currentx + 1, currenty], step + 1);
      }
      if(currenty != grid[currentx].length - 1){
          int current = recurse(grid , [currentx, currenty + 1], step + 1);
          if(shortest_path == -1 || current < shortest_path && current != -1){
              shortest_path = current;
          }
      }
      if(shortest_path != -1){
          return shortest_path + 1;
      }
      if(currenty != 0){
          int current = recurse(grid , [currentx, currenty - 1], step + 1);
          if(shortest_path == -1 || current < shortest_path && current != -1){
              shortest_path = current;
          }
      }
      if(currentx != 0){
          int current = recurse(grid , [currentx - 1, currenty], step + 1);
          if(shortest_path == -1 || current < shortest_path && current != -1){
              shortest_path = current;
          }
      }
      if(shortest_path == -1){
          return -1;
      }
      return shortest_path + 1;
  }
}
