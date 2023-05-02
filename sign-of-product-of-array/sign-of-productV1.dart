//Find the sign of the total product of an array. This
//is the brute force way and does not work in leetcode because
//the values go beyong 64bits.
class Solution {
  int arraySign(List<int> nums) {
      int total = 1;
      for(int i = 0 ; i < nums.length ; ++i){
          total *= nums[i];
          print(total);
      }
      if(total == 0){
          return 0;
      }
      if(total == total.abs()){
          return 1;
      }
      return -1;
  }
}
