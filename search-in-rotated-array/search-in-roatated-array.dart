//Given a rotated array find the index of the target value.
//If there are no instances then return -1.
//Time: 297ms Beats: 36%
//Memory: 143.3MB Beats: 56%

class Solution {
  int search(List<int> nums, int target) {
      for(int i = 0 ; i < nums.length ; ++i){
          if(nums[i] == target){
              return i;
          }
      }
      return -1;
  }
}
