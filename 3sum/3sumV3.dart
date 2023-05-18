//Three sum solution using dart and two pointers.
//The first thing done was I sorted the list to make sure
//I would not be checking the same value multiple times, and it allows for
//the two pointer optimization. The two pointer optimization is the main secret for this problem.
//This allows for the time complexity of this code to be O(n^2) instead of n^3. 
//Basically what it does is it checks to see if the left and right values add up to
//the needed value based on the first. An example would be if the first value is 5
//then the second and third would need to add up to -5. If the value the left and right add
//up to is bigger than that then you move the right pointer to the left and if the value
//is higher than the current value then you move the left pointer to the right.
//By doing this you no longer have to check if each set of two adds up to the value.
//Time: 405ms Beats: 60%
//Memory: 157.7MB Beats: 27.14%

class Solution {
  List<List<int>> threeSum(List<int> nums) {
      Set<String> found = {};
      nums.sort();
      List<List<int>> return_list = [];
      int last_val = 1000000;
      for(int i = 0 ; i < nums.length ; ++i){
          if(nums[i]== last_val){
              continue;
          }
          int current = nums[i];
          last_val = current;
          int left = i + 1;
          int right = nums.length - 1;
          int val_to_find = (current) * -1;
          while(left < right){
              if(nums[left] + nums[right] > val_to_find){
                  right -= 1;
                  continue;
              }
              if(nums[right] + nums[left] < val_to_find){
                  left += 1;
                  continue;
              }
              if(nums[right] + nums[left] == val_to_find){
                  String current_lst = current.toString() + " " + nums[left].toString() + " " + nums[right].toString();
                  if(found.contains(current_lst) == false){
                      found.add(current_lst);
                      return_list.add([current , nums[left] , nums[right]]);
                      left += 1;
                      continue;
                  }
                  left += 1;
                  continue;
              }
          }
      }
      return return_list;
  }
}
