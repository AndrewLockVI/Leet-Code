//Given a matrix of i + 1 size where i is the index of the list (0 index)
//return the minimum path from the top to the bottom where you can only either
//go to i or i+1 on the row below the current row.
//The time complexity of this code is O(n^2)
//Time: TLE
//Memory: TLE
class Solution {
  List<List<int>> triangle = [];
  int minimumTotal(List<List<int>> tri) {
      triangle = tri;
      return min( 0, 0, {});
  }

  int min(int current_index , int row, Map<String,int> memo){
      if(memo.containsKey(current_index.toString() + " " + row.toString())){
          int current_val = (memo[current_index.toString() + " " + row.toString()] ?? 0);
          return current_val;
      }
      if(row == triangle.length){
          return 0;
      }
      int curr = min( current_index , row + 1 , memo);
      int right = min( current_index + 1 , row + 1, memo);
      if(curr < right){
          return curr + triangle[row][current_index];
      }
      int lowest_for_index = right + triangle[row][current_index];
      memo[current_index.toString() + " " + row.toString()] = lowest_for_index;
      return lowest_for_index;
  }
}
