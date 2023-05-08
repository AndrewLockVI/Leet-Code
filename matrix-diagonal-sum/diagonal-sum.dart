//Given a matrix return the sum of all the values in the
//diagnols from top left to bottom right and top right to
//bottom left. 
//Ex.
//1 2 3
//3 4 5
//2 4 5
//The output would be 15 because you add up 1 + 4 + 5
//and then add 3 + 2 onto that. Since 4 is the shared center
//that will not be added on twice hence me zeroing it out in the 
//code below.
//The time complexity of this code is O(n) where n is the size of the matrix.
//Time: 388ms Beats: 100%
//Memory: 144.6MB Beats: 100%


class Solution {
  int diagonalSum(List<List<int>> mat) {
      int total = 0;
      for(int i = 0 ; i < mat[0].length; ++i){
          total += mat[i][i];
          mat[i][i] = 0;
      }
      int count = 0;
      for(int i = mat[0].length - 1 ; i >= 0 ; --i){
        print(mat[count][i]);
        total += mat[count][i];
        count += 1;
      }
      return total;
  }
}
