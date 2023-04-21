//Check to see if the string is a palindrome 
//don't take into account spaces punctuation or caps.
//Time complexity is O(n) where n is the length of s.
//Runtime: 288ms Beats: 89.92%
//Memory: 144.5MB Beats: 84.87%


class Solution {
  bool isPalindrome(String s) {
      bool palindrome = true;
      s = s.replaceAll(RegExp(r'[^\w\s _]+'), '');
      s = s.replaceAll(' ' , '');
      s = s.replaceAll('_' , '');
      s = s.toLowerCase();

      for(int i = 0 ; i < s.length / 2; i++){

          if(s[i] != s[s.length-1 - i]){
              palindrome = false;
              break;
          }
      }
      return palindrome;
  }
}
