//Given two integer inputs return the value of them divided
//by each other. To do this you are supposed to not use * / or %.
//Given this first I used recursion but it was too slow so I then
//went iterative with my current solution. 
//Time: 2194ms
//Beats: 6.6%
class Solution {
  int divide(int dividend, int divisor) {
    if(divisor == 1){
    if(dividend > pow(2,31) - 1){
      return (pow(2,31) - 1).toInt();
    }
    if(dividend < pow(-2,31)){
      return pow(-2,31).toInt();
    }
      return dividend;
    }
    if(divisor == -1){
    if(-dividend < pow(-2,31)){
      return pow(-2,31).toInt();
    }
    if(-dividend > pow(2,31) - 1){
      return (pow(2,31) - 1).toInt();
    }
      return -dividend;
    }
    bool negative = false;
    if(dividend < 0){
      dividend = dividend.abs();
      negative = !negative;
    }
    if(divisor < 0){
      divisor = divisor.abs();
      negative = !negative;
    }
    int ret_val = 0;
    while(dividend >= divisor + divisor + divisor){
      dividend -= divisor + divisor + divisor;
      ret_val += 3;
    }
    while(dividend >= divisor){
      dividend -= divisor;
      ret_val += 1;
    }
    if(-ret_val < pow(-2,31)){
      return pow(-2,31).toInt();
    }
    if(ret_val > pow(2,31) - 1){
      return (pow(2,31) - 1).toInt();
    }
    if(negative){
      return -ret_val;
    }
      return ret_val;
  }
}
