//Find the first and last indexes of the target value in the sorted list of nums.
//The time complexity of my code is O(log(n)) with a worst case of O(n) where all elements are the target value
//My solution uses a binary search to find an instance of the target number.
//It then finds the upper and lower bounds of the value and returns the range.
//If there are only one or two instances of the value then it gets sent to a special function to deal with short 
//lists that are length <= 2.
//Time: 278ms Beats: 78.26%
//Memory: 145.4MB Beats: 43.48%


class Solution {
  List<int> searchRange(List<int> nums, int target) {

      if(nums.length <= 2){
          return (solve_short(nums, target, 0));
      }
      int lower_bound = 0;
      int upper_bound = nums.length - 1;
      int found_index = 0;
      while(true){
          int median = ((lower_bound + upper_bound) / 2).toInt();
          if(upper_bound - lower_bound == 1){
              return(solve_short([nums[lower_bound] , nums[upper_bound]] , target, lower_bound));
          }
          if(nums[median] > target){
              upper_bound = median;
          }
          else if(nums[median] < target){
              lower_bound = median;
          }
          else{
              found_index = median;
              break;
          }
      }
      int start = 0;
      int end = 0;
      int i = found_index;
      while(true){
        if(nums.length == i){
            end = nums.length - 1;
            break;
        }
        if(nums[i] != target){
            end = i - 1;
            break;
        }
        i += 1;
      }
      i = found_index;
      while(true){
        if(i < 0){
            start = 0;
            break;
        }
        if(nums[i] != target){
            start = i + 1;
            break;
        }
        i -= 1;
      }
      return[start, end];
  }

    List<int> solve_short(List<int> nums, int target, int offset){
        offset = offset;
      if(nums.length == 0){
          return [-1 , -1];
      }
      if(nums.length == 1){
          if(nums[0] == target){
              return [offset, offset];
          }
          else{
              return[-1,-1];
          }
      }
      if(nums.length == 2){
          bool first = false;
          bool second = false;
          if(nums[0] == target){
              first = true;
          }
          if(nums[1] == target){
              second = true;
          }
          if(second == true && first == true){
              return [offset,1 + offset];
          }
          if(second == true){
              return[1 + offset,1 + offset];
          }
          if(first == true){
              return [offset,offset];
          }
          return [-1,-1];
      }
      return [-1,-1];
    }
}
