//Find the number of islands contained in a matrix
//where the string "0" represents water and "1" represents
//land. To do this I used DFS to travel through each
//island that is found by iterating through the matrix and then
//placing the travelled 1's into a set for O(1) search.
//The time complexity of this is O(m*n) where m is the height
//and n is the width of the matrix.
//Time: 353ms Beats: 24%
//Memory: 180.4MB Beats: 8%

class Solution {
  int numIslands(List<List<String>> grid) {
      Set<String> travelled = {};
      int count = 0;
      for(int i = 0 ; i < grid.length ; ++i){
          for(int x = 0 ; x < grid[i].length ; ++x){
              if(grid[i][x] == "0"){
                  continue;
              }
              if(traverse_island(grid, [i,x], travelled)){
                  count += 1;
              }
          }
      }
      return count;
  }

  bool traverse_island(List<List<String>> grid , List<int> position, Set<String> travelled){
      if(grid[position[0]][position[1]] == "0"){
          return false;
      }
      String current_str = position[0].toString() + " " + position[1].toString();
      if(travelled.contains(current_str)){
          return false;
      }
      travelled.add(current_str);
      if(position[0] + 1 != grid.length){
        traverse_island(grid, [position[0] + 1, position[1]], travelled);
      }
      if(position[0] - 1 != -1){
        traverse_island(grid, [position[0] - 1, position[1]], travelled);
      }
      if(position[1] + 1 != grid[position[0]].length){
        traverse_island(grid, [position[0], position[1] + 1], travelled);
      }
      if(position[1] - 1 != -1){
        traverse_island(grid, [position[0], position[1] - 1], travelled);
      }
      return true;
  }

}
