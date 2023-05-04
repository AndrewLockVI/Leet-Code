//Given the input "part" remove all occurences of it from
//the string. Each time an instance is found move back to the left
//and iterate through the list again.
//The worst case time complexity of this code is O(n^2) where 
//Time: 276ms Beats: 100%
//Memory: 140.1MB Beats: 100%

class Solution {
  String removeOccurrences(String s, String part) {
      int itr = 0;
      while(itr != s.length){
          bool found = true;
          for(int i = 0 ; i < part.length ; ++i){
              if(i + itr >= s.length){
                  found = false;
                  break;
              }
              
              if(s[i + itr] != part[i]){
                  found = false;
                  break;
              }
          }
          if(found){
              s = s.substring(0, itr) + s.substring(itr + part.length);
              itr = -1;
          }
          itr += 1;
      }
      return s;
  }
}
