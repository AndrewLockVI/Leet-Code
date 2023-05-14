//Find the maximum subarray of a list where the product of the subarray is the greatest.
//I used a brute force solution to iterate through the list and find the max subarray of each
//value and then returned the highest total max subarray.
//This solution is O(n^2) time complexity where n is the number of values in the list.
//Time: 290ms Beats: 66.67%
//Memory: 144MB BeatsY 66.67%
class Solution {
  int maxProduct(List<int> nums) {
      int max = nums[0];
      for(int i = 0 ; i < nums.length - 1 ; ++i){
          if(nums[i] > max){
              max = nums[i];
          }
          int current = nums[i];
          for(int x = i + 1; x < nums.length ; ++ x){
            current = nums[x] * current;
            if(current > max){
                max = current;
            }
            if(current == 0){
                break;
            }
        }
      }
      if(nums[nums.length - 1] > max){
          return nums[nums.length-1];
      }
      return max;
  }
}
