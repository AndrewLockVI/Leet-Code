//This is a solution that takes O(n^2) time
//which is too slow for leet code to accept.
//I am going to redo this using two pointers 
//from the start and one from the end.

class Solution {
  bool validPalindrome(String s) {
      if(check_palindrome(s.substring(1))){
          return true;
      }
      for(int i = 1 ; i < s.length ; ++i){
          String new_str = s.substring(0 , i) + s.substring(i + 1);
          if(check_palindrome(new_str) == true){
              return true;
          }
      }
      return false;
  }
  bool check_palindrome(String s){
      if(s.length <= 1){
          return true;
      }
      for(int i = 0 ; i < s.length / 2 + 1; ++i){
          if(s[i] != s[s.length - 1 - i]){
              return false;
          }
      }
      return true;
  }
}
