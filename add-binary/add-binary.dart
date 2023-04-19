//Add two strings together that are "binary" strings
//with ones and zeroes. I did this by assigning them to a reversed
//list and then going through them one value at a time carrying the remainders.
//I another approach is to use binary to decimal conversion, but
//the problem is that in leetcode it says b.length<=10^4 which means
//the input could be larger than 64 bits thus can't be stored in an int.
//The worst case time complexity of this is O(n^2).
//Runtime: 270ms Beats: 84.31%
//Memory: 142.5MB Beats: 74.51%

void main(){
    Solution sol = new Solution();
    print(sol.addBinary("010110101011", "1010111010101"));

}

class Solution {

String addBinary(String a, String b) {
    List<String> long;
    List<String> short;
    if(a.length > b.length){
        long = a.split("");
        short = b.split("");
    }
    else{
        long = b.split("");
        short = a.split("");
    }
    short = short.reversed.toList();
    long = long.reversed.toList();
    for(int i = 0 ; i < short.length ; ++i){
        int carry = 0;
        if(short[i] == '0'){
            continue;
        }
        if(long[i] == '1'){
            long[i] = '0';
            carry = 1;
        }
        else{
            long[i] = '1';
            continue;
        }
        int next_val = i + 1;
        while(carry != 0){
            if(next_val >= long.length){
                long.add('0');
                continue;
            }
            if(long[next_val] == '1'){
                long[next_val] = '0';
            }
            else{
                long[next_val] = '1';
                carry = 0;
            }
            next_val += 1;

        }
    }
    return long.reversed.join('');
  }
}
