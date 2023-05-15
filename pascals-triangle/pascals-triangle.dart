//Given a number of rows return the values contained in each
//row of pascals triangle. This solution is the optimal solution using recursion
//solution with a time complexity of O(n^2)
//There is no reason to use DP in this because there is no request to create multiple 
//triangles. As such there is no recomputing.
//Time: 258ms Beats: 73.26%
//Memory: 140.2MB Beats: 88.37%
class Solution {
  List<List<int>> generate(int numRows) {
      if(numRows == 1){
          return [[1]];
      }
      
     

      List<List<int>> return_list = generate(numRows-1);
      return_list.add([]);
      List<int> last_row = return_list[return_list.length - 2];
      List<int> current_row = return_list[return_list.length - 1];
      current_row.add(1);
      for(int i = 1 ; i < last_row.length ; ++i){
        current_row.add(last_row[i - 1] + last_row[i]);
      }
      current_row.add(1);
      return return_list;
  }
}
