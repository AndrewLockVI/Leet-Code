//Given an input double x return x^n power without using
//a built in power method.
class Solution {
  double myPow(double x, int n) {
      if(n == 0){
        return 1;
      }
      double return_val = x;
      for(int i = 1; i < n.abs() ; ++i){
        return_val = return_val * x;
      }
      if(n < 0){
        return 1 / return_val;
      }
      return return_val;
  }
}
