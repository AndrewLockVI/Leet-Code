//Take a number as the input and return a matrix
//of the same width and height as the number where the 
//values within it are ordered in a spiral formation.
//Ex.
//Input:
// 3
// 1 2 3
// 8 9 4
// 7 6 5
//The time complexity of this code is O(n^2) where n is the input number.
//Time: 260ms Beats: 75%
//Memory: 140.6MB Beats: 75%

class Solution {
  List<List<int>> generateMatrix(int n) {
      int placed = 1;
      List<List<int>> spiral = [];
      int top_margin = 0;
      int bottom_margin = n;
      int left_margin = 0;
      int right_margin = n;
      for(int i = 0 ; i < n ; ++i){
          spiral.add([]);
          for(int x = 0 ; x < n ; ++x){
              spiral[spiral.length - 1].add(0);
          }
      }
      while(placed < n*n + 1){
          for(int i = left_margin ; i < right_margin; ++i){
              spiral[top_margin][i] = placed;
              placed += 1;
          }
          top_margin += 1;

          for(int i = top_margin ; i < bottom_margin ; ++i){
              spiral[i][right_margin - 1] = placed;
              placed += 1;

          }
          right_margin -= 1;
          
          for(int i = right_margin - 1 ; i >= left_margin ; --i){
              spiral[bottom_margin - 1][i] = placed;
              placed += 1;

          }
          bottom_margin -= 1;

          for(int i = bottom_margin - 1; i >= top_margin ; --i){
              spiral[i][left_margin] = placed;
              placed += 1;

          }
          left_margin += 1;
      }

      return spiral;
  }
}
