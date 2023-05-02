//Find the sign of the product of a list.
//To do this I checked if values were negative. If they are
//then multiple the "total" variable that tracks the sign of the list.
//If the list contains a 0 then it automatically returns 0.
//The time complexity of this code is O(n) where n is the length of the list.
//Time: 237ms Beats: 100%
//Memory: 141.6MB Beats: 100%

class Solution {
  int arraySign(List<int> nums) {
      int total = 1;
      for(int i = 0 ; i < nums.length ; ++i){
    
          if(nums[i] < 0){
              total *= -1;
          }
          else if(nums[i] == 0){
              return 0;
          }
      }
      if(total == total.abs()){
          return 1;
      }
      return -1;
  }
}
