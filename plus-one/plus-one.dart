//Add one to the last index of the array. If needed carry the value on to the next
//value on the left. My implementation has a worst case time complexity of O(n) 
//because at most it only iterates through the list one time.

//Execution: 265ms Beats: 71.43%
//Memory: 142MB Beats: 86.55%



void main(){
    Solution sol = new Solution();
    print(sol.plusOne([3,9,9,9,9,9]));
}
class Solution {
  List<int> plusOne(List<int> digits) {
      int carry = 0;
      digits[digits.length - 1] = digits[digits.length - 1] + 1;
      for(int i = digits.length - 1; i >= 0 ; --i){
          if(carry != 0){
              digits[i] = digits[i] + carry;
              carry = 0;
          }
          if(digits[i] >= 10){
              digits[i] -= 10;
              carry += 1;
          }
          if(carry == 0){
              return digits;
          }
      }
      if(carry != 0){
          digits.insert(0, carry);
      }
      return digits;
  }
}
