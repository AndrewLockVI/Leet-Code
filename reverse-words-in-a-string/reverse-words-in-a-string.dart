//Given a string s reverse each word within it without changing
//the order that the words appear. Then return the new string.
//Input: This is an example
//Output: sihT si na elpmaxe
//My solution splits the words into their own strings
//then reverses them and places them into the output string
//appending on a space at the end that was removed when splitting
//the initial string.
//Time: 985ms Beats: 19.51%
//Memory: 175.4MB Beats: 29.27%

class Solution {
  String reverseWords(String s) {
      List<String> words = s.split(" ");
      String ret_str = "";
      for(int i = 0 ; i < words.length ; ++i){
        for(int x = words[i].length - 1 ; x >= 0 ; --x){
          ret_str += words[i][x];
        }
        if(i + 1 < words.length){
          ret_str += " ";
        }
      }
      return ret_str;
  }
}
