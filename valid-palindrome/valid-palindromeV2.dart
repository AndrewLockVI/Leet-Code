//This is the better solution to the valid palindrome ii problem.
//The time complexity of this is O(n) where n is the length of the string.
//Time: 311ms Beats: 51.25%
//Memory: 154.1MB Beats: 14.29%


class Solution {
  bool validPalindrome(String s) {
      if(s.length <= 2){
          return true;
      }


      return is_valid(s);
}
int removed_vals = 0;

bool is_valid(String s){
    for(int i = 0 ; i < s.length / 2 + 1 ; ++i){
        if(s[i] == s[s.length - i - 1]){
            continue;
        }
        else{
            if(removed_vals > 0){
                return false;
            }
            removed_vals += 1;
            bool boo2 = is_valid(s.substring(0 , i) + s.substring(i+1));
            bool boo1 = is_valid(s.substring(0,s.length-i-1) + s.substring(s.length-i));
            
            if(boo1 == true){
                return true;
            }
            if(boo2 == true){
                return true;
            }
            return false;
        }
    }
    return true;
    }
}
