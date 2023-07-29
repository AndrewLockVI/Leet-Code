//Given a list of values find the max gap from one value
//to the next once the list is sorted. To do this I used 
//merge sort to sort the list, then I checked every index to find 
//the largest gap and returned it. The time complexity
//of this code is O(nlog(n)) because that is how long merge
//sort takes.
//Time: 676ms Beats: 20%
//Memory: 214MB Beats: 20%
class Solution {
  int maximumGap(List<int> nums) {
      nums = merge(nums);
      int max_gap = 0;
      for(int i = 1 ; i < nums.length ; ++i){
          if((nums[i] - nums[i - 1]).abs() > max_gap){
              max_gap = (nums[i] - nums[i - 1]).abs();
          }
      }
      return max_gap;
  }
  List<int> merge (List<int> nums){
      if(nums.length == 1){
          return nums;
      }
      List<int> l1 = merge(nums.sublist(0 , (nums.length / 2).toInt()));
      List<int> l2 = merge(nums.sublist((nums.length / 2).toInt()));
      int l1_ptr = 0;
      int l2_ptr = 0;
      List<int> l3 = [];
      while( l1_ptr < l1.length && l2_ptr < l2.length ){
          if(l1[l1_ptr] < l2[l2_ptr]){
              l3.add(l1[l1_ptr]);
              l1_ptr += 1;
          }
          else{
              l3.add(l2[l2_ptr]);
              l2_ptr += 1;
          }
      }
      while(l1_ptr < l1.length){
          l3.add(l1[l1_ptr]);
          l1_ptr += 1;
      }
      while(l2_ptr < l2.length){
          l3.add(l2[l2_ptr]);
          l2_ptr += 1;
      }
      return l3;
  }
}
