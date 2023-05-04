//If a number is a power of two return true else return false.
//This code has a time complexity of log(n) where n is the input value.
//Time: 318ms Beats: 38.82%
//Memory: 144.6MB Beats: 41.18%

class Solution {
  bool isPowerOfTwo(int n) {
      int guess = 1;
      while(guess < n + 1){
          if(guess == n){
              return true;
          }
          guess = guess * 2;
      }
      return false;
  }
}
