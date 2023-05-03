//Find the character that was added to t.
//The input is guaranteed to have one character extra in
//string t and that value needs to be returned.
//The time complexity of this code is O(n) where n is the length
//of String t.
//Runtime: 224ms Beats: 100%
//Memory: 142MB Beats: 47.62%


class Solution {
  String findTheDifference(String s, String t) {
    Map<String,int> characters = {};
    for(int i = 0 ; i < s.length ; ++i){
      characters[s[i]] = (characters[s[i]] ?? 0) + 1;
    }
    for(int i = 0 ; i < t.length ; ++i){
      if((characters[t[i]] ?? 0) == 0 ){
        return t[i];
      }
      else{
        characters[t[i]] = (characters[t[i]] ?? 0)- 1;
      }
    }
    return "";
  }
}
