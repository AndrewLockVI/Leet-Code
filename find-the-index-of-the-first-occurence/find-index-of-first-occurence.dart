//Find the first occurence of a substring in a given string
//if the substring is not found return -1. I completed this using
//the sliding window method of checking if any given character is the word
//and then moving to the next charcter if it is not. This is an O(M * N) time
//complexity function.
//Runtime: 206ms Beats: 99.45%
//Memory: 139.3MB Beats: 87.91%




void main(){
    Solution sol = new Solution();
    print(sol.strStr("Test input raoiset", "input"));
}

class Solution {
  int strStr(String haystack, String needle) {
    
    if(haystack == needle){
        return 0;
    }
    if(needle.length == 1){
        for(int i = 0; i < haystack.length ; ++i){
            if(haystack[i] == needle){
                return i;
            }
        }
        return -1;
    }
    int x = 0;
    for(int i = 0; i < haystack.length; ++i){
        if(haystack[i] == needle[0]){
            int count = 1;
            for(x = i + 1; x < haystack.length ; ++x){
                if(count == needle.length){
                    return x - needle.length;
                }
                if(haystack[x] != needle[count]){
                    break;
                }
                count += 1;
            }
            if(count == needle.length){
                return x - needle.length;
            }
        }
    }
    return -1;
  }
}
