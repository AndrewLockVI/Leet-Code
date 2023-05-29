//Given a list of numbers return if it is possible to make it
//to the end of the list where you are only able to jump at most the number of
//spots on the current nums value. To solve this I used DP, recursion, and memoization.
//I chose to use a list instead of a set because the set was getting too big and since we know
//how long the list will be a list works well for this because of its constant time checks.

//Note: I was running into many issues with sets
//as well as shortening the list each time. Sublists
//do not work on this problem because they take linear time
//to create as opposed to indexes which work much faster.

//Time: 623ms Beats: 14.29%
//Memory: 167.3MB Beats: 7.14%
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
      for(int i = 0 ; i < nums[index] ; ++i){
          if(jump(nums, index + i + 1)){
              return true;
          }
      }
      return false;
  }
}
