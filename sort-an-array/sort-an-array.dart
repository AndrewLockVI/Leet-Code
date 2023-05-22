//Given an input list nums sort the list in O(nlog(n)) time
//without using the built in sort function. To do this I used
//merge sort recursively which splits the list into n lists and then joins
//them together.
//Time: 505ms Beats: 44.44%
//Memory: 210.2 MB Beats: 33.33%

class Solution {
  List<int> sortArray(List<int> nums) {
      if(nums.length == 1){
        return [nums[0]];
      }
      List<int> l1 = sortArray(nums.sublist(0 , (nums.length / 2).toInt()));
      List<int> l2 = sortArray(nums.sublist((nums.length / 2).toInt()));
      List<int> l3 = [];
      int l1_pointer = 0;
      int l2_pointer = 0;
      while(l1_pointer < l1.length && l2_pointer < l2.length){
        int l1_val = l1[l1_pointer];
        int l2_val = l2[l2_pointer];
        if(l1_val < l2_val){
          l3.add(l1_val);
          l1_pointer += 1;
        }
        else{
          l3.add(l2_val);
          l2_pointer += 1;
        }
      }
      while(l1_pointer < l1.length){
          l3.add(l1[l1_pointer]);
          l1_pointer += 1;
      }
      while(l2_pointer < l2.length){
          l3.add(l2[l2_pointer]);
          l2_pointer += 1;
      }
      return l3;
  }
}
