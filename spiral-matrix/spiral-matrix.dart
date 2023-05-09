//Given a matrix return the values contained within it
//as a list in the order of a spiral.
//Ex:
// 1 2 3
// 4 5 6
// 7 8 9
//Output:
// [1,2,3,6,9,8,7,4,5]
//To know when to end my code counts the number of spaces that I
//have visited to see if I have gone to all of them. When I have 
//the algorithm returns the list.
//The time complexity of this code is O(n) where n is the h*w of the matrix
//Time: 251ms Beats: 65.38%
//Memory: 140.1MB Beats: 61.54%

class Solution {
  List<int> spiralOrder(List<List<int>> matrix) {
      int margin_top = 0;
      int margin_bottom = matrix.length;
      int margin_right = matrix[0].length;
      int margin_left = 0;
      int rem = matrix.length * matrix[0].length;
      List<int> return_vals = [];
      while(rem > 0){
          for(int i = margin_left ; i < margin_right && rem != 0  ; ++i){
              return_vals.add(matrix[margin_top][i]);
              rem -= 1;
          }
          margin_top += 1;
          for(int i = margin_top ; i < margin_bottom && rem != 0  ; ++i){
              return_vals.add(matrix[i][margin_right - 1]);
              rem -= 1;
          }
          margin_right -= 1;
          for(int i = margin_right - 1; i >= margin_left && rem != 0  ; --i){
              return_vals.add(matrix[margin_bottom - 1][i]);
              rem -= 1;
          }
          margin_bottom -= 1;
          for(int i = margin_bottom - 1; i >= margin_top && rem != 0 ; --i){
              return_vals.add(matrix[i][margin_left]);
              rem -= 1;
          }
          margin_left += 1;
      }
      return return_vals;
  }
}

