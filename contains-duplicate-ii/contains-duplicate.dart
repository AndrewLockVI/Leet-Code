//This is the intuitive solution that is too slow for leetcode.
//The time complexity of this code is O(n^2) where n is the length of the list "nums"
class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
      for(int i = 0 ; i < nums.length ; ++i){
          for(int x = i + 1; x < nums.length ; ++x){
              if(nums[i] == nums[x]){
                  if((i - x).abs() <= k){
                      return true;
                  }
              }
          }
      }
      return false;
  }
}
