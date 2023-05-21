//Given a matrix rotate it clockwise 90 degrees
//To do this I created a temp matrix and using that updated
//the values in the original matrix rotated 90 degrees clockwise.
//The time complexity of this is O(n) where n is the number 
//of values in the matrix.
//Time: 250ms Beats: 91.43%
//Memory: 142.4MB Beats: 68.57%

class Solution {
  void rotate(List<List<int>> matrix) {
      List<List<int>> temp_mat = [];
      for(int i = 0 ; i < matrix.length ; ++i){
          temp_mat.add(List.from(matrix[i]));
      }
      for(int i = 0 ; i < temp_mat.length ; ++i){
        for(int x = 0 ; x < temp_mat[i].length ; ++x){
          matrix[x][matrix[x].length - 1 - i] = temp_mat[i][x];
        }
      }
  }
}
