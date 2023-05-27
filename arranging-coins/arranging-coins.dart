//Given an integer n return the number of rows it can fill
//assuming each row has one more column than the last (think stairs).
//Time: 314ms Beats: 66.67%
//Memory: 141.4MB Beats: 100%
class Solution {
  int arrangeCoins(int n) {
      int depth = 1;
      while(n > 0){
          if(n >= depth){
              n -= depth;
              depth += 1;
          }
          else{
              break;
          }
      }
      return depth - 1;
  }
}
