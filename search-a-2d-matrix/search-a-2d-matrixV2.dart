//Given an input matrix of sorted elements return true if 
//the matrix contains the target number.

//To solve this I first did a binary search on the rows of the matrix
//to find the row that target may be in. Then from there I called the searchRow
//function which searches the input list and returns true if it contains the target integer.
//Time complexity of this is O(log(m*n))

//Time: 273ms Beats: 81.25%
//Memory: 142.8MB Beats: 96.88%

class Solution {
  bool searchMatrix(List<List<int>> matrix, int target) {
    int left = 0;
    int right = matrix.length - 1;
    while(left < right - 1){
        int midpoint = ((left + right).toInt() / 2 ).toInt();
        if(matrix[midpoint][0] > target){
            right = midpoint;
            continue;
        }
        else if(matrix[midpoint][matrix[midpoint].length - 1] < target){
            left = midpoint;
            continue;
        }
        return searchRow(matrix[midpoint], target);
    }
    if(searchRow(matrix[left], target) || searchRow(matrix[right], target)){
        return true;
    }
    return false;
  }
  bool searchRow(List<int> values, int target){
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
