//This reverses the direction of searches in the for
//loop to check the furthest forward jump first to speed up
//movement.
//Time: 541ms Beats: 14.29%
//Memory: 166.8MB Beats: 7.14%
class Solution {
  List<bool> memo = [];
  bool canJump(List<int> nums) {
      memo = List.filled(nums.length , false);
      return jump(nums, 0);
  }
  bool jump(List<int> nums , int index){
      if(memo[index]){
          return false;
      }
      memo[index] = true;
      if(nums.length - 1 == index || nums[index] + index >= nums.length){
          return true;
      }
      if(nums[index] == 0){
          return false;
      }
      for(int i = nums[index]; i > 0 ; --i){
          if(jump(nums, index + i)){
              return true;
          }
      }
      return false;
  }
}
