//Given a zero indexed row of pascal's triangle return
//the values in that row. I solved this using DP and recursion
//to find the first row then second and so on until returning the requested row.
//The time complexity of this is O(n^2).
//Time: 260ms Beats: 63.64%
//Memory: 140.7MB Beats: 36.36%

class Solution {
  List<int> getRow(int rowIndex) {
      if(rowIndex <= 0){
          return [1];
      }
      List<int> last_row = getRow(rowIndex - 1);
      List<int> this_row = [];
      this_row.add(1);
      for(int i = 1 ; i < last_row.length ; ++i){
          this_row.add(last_row[i-1] + last_row[i]); 
      }
      this_row.add(1);
      return this_row;
  }
}
