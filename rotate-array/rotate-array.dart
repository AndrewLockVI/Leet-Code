//Given an array rotate it k times to the right.
//To solve this I first take the remainder of K / nums.length
//then create another list that is the sublists of nums so that it stores
//the roatated values. Then for each value in the list they are copied to the original list.
//The time complexity of this code is O(n) where n is the length of the nums list.
//Time: 326ms Beats: 49.18%
//Memory: 163.9MB Beats: 8.20%

class Solution {
  void rotate(List<int> nums, int k) {
      List<int> new_list = [];
      k = k % nums.length;
      new_list = nums.sublist(nums.length - k);
      new_list += nums.sublist(0, nums.length - k);
      for(int i = 0 ; i < new_list.length ; ++i){
        nums[i] = new_list[i];
      }
  }
}
