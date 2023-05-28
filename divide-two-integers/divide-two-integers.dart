//Given two integers return the value of the dividend/ divisor
//assuming that the return can only be a 32-bit integer in size.
//Time: 323ms Beats: 48.48%
//Memory: 144MB Beats: 24.24%
class Solution {
  int divide(int dividend, int divisor) {
      int return_val = (dividend/divisor).toInt();
      if(return_val > pow(-2,31)){
        if(return_val < pow(2,31)){
          return return_val;
        }
        return (pow(2,31) - 1).toInt();
      }
      else{
        return (pow(-2,31)).toInt();
      }
  }
}
