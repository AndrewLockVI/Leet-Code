//Given a 2d matrix where each column contains sorted elements
//and each value from one column to the next is also in order
//return true if the target is contained in the matrix or false if
//not. 
//This solution is bad because I could just check if matrix[i][x] == target
//instead of putting them all in a sorted list and using a binary search.
//I will do this again this time doing a binary search on the matrix.

//Time: 282ms Beats: 59.38%
//Memory: 145.6MB Beats: 53.13%

class Solution {
  bool searchMatrix(List<List<int>> matrix, int target) {
      List<int> values = [];
      for(int i = 0 ; i < matrix.length ; ++i){
          for(int nums in matrix[i]){
              values.add(nums);
          }
      }
    return searchFor(values, target);
  }
  bool searchFor(List<int> values, int target){
      int left = 0;
      int right = values.length - 1;
      while(left < right - 1){
          int midpoint = ((left + right).toInt() / 2).toInt();
          if(values[midpoint] > target){
              right = midpoint;
              continue;
          }
          else if(values[midpoint] < target){
              left = midpoint;
              continue;
          }
          return true;
          
      }

      if(values[left] == target || values[right] == target){
          return true;
      }
      return false;
  }
}
