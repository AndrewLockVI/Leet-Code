
//This is an algorithm to merge two arrays together that are pre-sorted. Given this
//my algorithm is the optimal one and has a time complexity of O(n) which makes it
//a linear time complexity algorithm.

//Runtime: 238ms Beats: 98.70%
//Memory: 140.2MB Beats: 100%

class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    
    List<int> nums = nums1.sublist(0,m);
    int l1 = 0;
    int l2 = 0;
    int index = 0;
    while(l1 < m && l2 < n){
      if(nums[l1] < nums2[l2]){
        nums1[index] = nums[l1];
        l1 += 1;
      }
      else{
        nums1[index] = nums2[l2];
        l2 += 1;
      }
      index += 1;
    }
    while(l1 < m){
      nums1[index] = nums[l1];
      index += 1;
      l1 += 1;
    }
      while(l2 < n){
      nums1[index] = nums2[l2];
      index += 1;
      l2 += 1;
    }
  }
}
