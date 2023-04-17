import 'dart:io';


//Longest substring without repeating characters
//Runtime: 805ms Beats: 10.32%
//Memory: 173.7MB Beats: 23.87%

void main(){
    Solution sol = new Solution();
    stdout.write("Input your string to find longest substring without repeating characters: ");
    String input = stdin.readLineSync()!;
    print(sol.lengthOfLongestSubstring(input));
}
class Solution {
  int lengthOfLongestSubstring(String s) {
      int output = 0;
      String current = "";
      for(int i = 0 ; i < s.length ; ++i){
          current = s[i];
          for(int x = i + 1; x < s.length ; ++x){
              if(current.contains(s[x])){
                  if(current.length > output){
                      output = current.length;
                  }
                  break;
              }
              else{
                current += s[x];
              }
          }
            if(current.length > output){
                output = current.length;
            }
      }
      return output;
  }
}
