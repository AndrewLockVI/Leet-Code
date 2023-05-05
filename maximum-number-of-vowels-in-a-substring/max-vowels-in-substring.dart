//Find the largest number of vowels in a string where k
//is the greatest window size. To do this I used a set
//of all vowels so I could check if a letter was a vowel in
//constant time. Then if it was I would check the entire window
//to see if it was the largest number of vowels in a given window.
//The time complexity of this code is O(n^2) where n is the number
//of characters in string s.
//Time: 1519ms Beats: 100%
//Memory: 148.4MB Beats: 100%
//This question is way too difficult for dart because
//many solutions that should work do not due to compile time.

class Solution {
  int maxVowels(String s, int k) {
      Set vowels = {};
      vowels.add('a');
      vowels.add('e');
      vowels.add('i');
      vowels.add('o');
      vowels.add('u');
      int highest = 0;
      int current = 0;
      int next_vowel = 0;
      for(int i = 0 ; i < s.length; ++i){
          if(vowels.contains(s[i])){
              current = 1;
              for(int x = i + 1; x < i + k && x < s.length ; ++x){
                 if(vowels.contains(s[x])){
                     if(next_vowel == 0){
                         next_vowel = x;
                     }
                     current += 1;
                 }
              }
              if(current > highest){
                  highest = current;
              }
          }
      }
      return highest;
    }
}
