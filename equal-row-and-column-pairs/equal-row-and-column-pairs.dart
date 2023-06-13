//Given a m * n grid return the number of pairs you can make where 
//a pair is a row == column.
//To solve I created a string for each column and compared each row with the columns
//returning the number of times that row's values appeared in the columns list.

//Time: 552ms Beats: 100%
//Memory: 180.8MB Beats: 100%
class Solution {
  int equalPairs(List<List<int>> grid) {
      int return_val = 0;
      Map<String, int> rows = {};
      for(int i = 0 ; i < grid.length ; ++i){
          String current = "";
          for(int x = 0 ; x < grid[i].length ; ++x){
              current += grid[i][x].toString() + ' ';
          }
          rows[current] = (rows[current] ?? 0) + 1;
      }
      for(int x = 0 ; x < grid[0].length ; ++x){
          String curr = "";
          for(int i = 0 ; i < grid[0].length ; ++i){
              curr += grid[i][x].toString() + " ";
          }
          if(rows.containsKey(curr)){
              return_val += (rows[curr] ?? 0);
          }
      }
      return return_val;
  }
}
