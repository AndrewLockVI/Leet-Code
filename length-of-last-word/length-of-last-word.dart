import 'dart:io';

//This is my first dart program!!!
//I am doing this to start my learning process of flutter
//Runtime: 249ms Beats: 78.21%
//Memory: 140.9 Beats: 42.46%
void main(){
    Solution sol = new Solution();
    stdout.write("Enter words to find length of last word: ");
    String input_str = stdin.readLineSync()!;
    print(sol.lengthOfLastWord(input_str));
}


class Solution {
    int lengthOfLastWord(String s) {
    //Clear the spaces from the end of the string
      s = s.trim();
      int len = 0;
      for(int i = s.length - 1 ; i >= 0; --i){
        if(s[i] == " "){
          break;
        }
        else{
          len += 1;
        }
      }
      return len;
  }
}


