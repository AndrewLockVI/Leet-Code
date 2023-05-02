//Find the first character in a string that is not recurring then return the index.
//The time complexity of this code is O(n) where n is the number of charcters in the string.
//Time: 297ms Beats: 83.58%
//Memory: 144.1MB Beats: 41.79%

class Solution {
  int firstUniqChar(String s) {
      Map<String, int> letters = {};
      for(int i = 0 ; i < s.length ; ++i){
        if(letters.containsKey(s[i])){
          letters[s[i]] = 2;
        }
        else{
          letters[s[i]] = 1;
        }
      }
      for(int i = 0 ; i < s.length ; ++i){
        if(letters[s[i]] == 1){
          return i;
        }
      }
      return -1;
  }
}
