//Given a matrix if a given index == 0 then all other values
//in the same row and column should be set to zero. The difficulty
//in this arises because that rule only applies for original zeroes
//and the algorithm must be done in place. 
//My solution iterates through the matrix and when an original 0 is found
//the matrix is iterated through the set the appropriate values to 0. 
//Time: 337ms Beats: 60%
//Memory: 152.1MB Beats: 20%
class Solution {
  Set<String> zeroed =  {};
  void setZeroes(List<List<int>> matrix) {
      for(int i = 0 ; i < matrix.length ; ++i){
          for(int x = 0 ; x < matrix[i].length ; ++x){
              if(matrix[i][x] == 0){
                  if(zeroed.contains(i.toString() + " " + x.toString())){
                      continue;
                  }
                  set_zeroes([i,x], matrix);
                  zeroed.add(i.toString() + " " + x.toString());
              }
          }
      }
  }
  void set_zeroes(List<int> position, List<List<int>> matrix){
      int posx = position[0];
      int posy = position[1];
      for(int i = 0 ; i < matrix[0].length ; ++i){
          if(matrix[posx][i] == 0){
              continue;
          }
          matrix[posx][i] = 0;
          zeroed.add(posx.toString() + " " + i.toString());
      }
      for(int i = 0 ; i < matrix.length ; ++i){
          if(matrix[i][posy] == 0){
              continue;
          }
          matrix[i][posy] = 0;
          zeroed.add(i.toString() + " " + posy.toString());
      }
  }
}
