//Given a string input s that has only numbers
//return the total number of possible ways to decode
//the numbers assuming that 1 = A and so on all the way to
//26 = z. Given this for *all values in the list there will be
//multiple ways to express them by either including the value
//before, after, or only the current. To solve this I used recursion
//and memoization to remember the already computed permutations for the
//last values thus saving on computing those again. Given this the time complexity
//of this code is O(n).
//Time: 263ms Beats: 83.33%
//Memory: 143.5MB Beats: 16.67%

class Solution {
  Map<int,int> memo = {};
  int numDecodings(String s) {
    if(memo[s.length] != null){
      return (memo[s.length] ?? 0);
    }
    if(s.length <= 1){
      if(s.length != 0){
        if(s[0] == '0'){
          return 0;
        }
      }
      return 1;
    }
    if(s[0] == '0'){
      return 0;
    }
    int return_val = 0;
    return_val += numDecodings(s.substring(1));
    String second = s.substring(0,2);
    if(int.parse(second) <= 26){
      return_val += numDecodings(s.substring(2));
    }
    memo[s.length] = return_val;
    return return_val;
  }
}
