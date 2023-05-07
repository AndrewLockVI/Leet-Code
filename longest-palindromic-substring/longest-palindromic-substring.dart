//Longest palindromic substring solution using dart.
//Find the longest palindrome contained in a string and return it.
//The solution I used to this problem was to place all indexes of characters into a map.
//I then iterated through the string again and each repeat value is checked to see if it creates a palindrome.
class Solution {
  String longestPalindrome(String s) {
      String longest = "";
      Map <String, List<int>> characters = {};
      for(int i = 0 ; i < s.length ; ++i){
          if(characters[s[i]] != null){
              characters[s[i]]?.add(i);
          }
          else{
              characters[s[i]] = [i];
          }
      }
      for(int i = 0 ; i < s.length ; ++i){
          if((characters[s[i]]?.length ?? 0) >= 2){
              List<int> indexes = characters[s[i]] ?? [];
              for(int x = 0 ; x < indexes.length ; ++x){
                  for(int z = indexes.length - 1; z > x ; --z){
                      if((indexes[z] - indexes[x]).abs()  >= longest.length){
                        String sub = s.substring(indexes[x] , indexes[z] + 1);
                            if(isPalindrome(sub)){
                                longest = sub;
                            }
                        }
                      }
                  }
              }
          }
          if(longest == "" && s.length > 0){
              return s[0];
          }
          return longest;
      }
    bool isPalindrome(String check){
        if(check.length == 1){
            return true;
        }
        if(check.length == 2){
            if(check[0] == check[1]){
                return true;
            }
            return false;
        }
        for(int i = 0 ; i < check.length / 2 + 1 ; ++i){
            if(check[i] != check[check.length - 1 - i]){
                return false;
            }    
        }
        return true;
    }
}
