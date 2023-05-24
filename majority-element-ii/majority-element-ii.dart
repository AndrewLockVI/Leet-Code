//Given a list of nums return all values that make up at least
//1/3 of the elements in the list. The time complexity of this code 
//is O(n) where n is the number of values in the nums list.
//My solution iterates through the list placing the values into a hashmap
//along with how many times the value has been found in the list.
//Then from there it iterates through the map and adds any values
//that occur more than 1/3 of the time in the list.
//Time: 290ms Beats: 100%
//Memory: 144.9MB Beats: 85.71%

class Solution {
  List<int> majorityElement(List<int> nums) {
      Map<int, int> usages = {};
      for(int i = 0 ; i < nums.length ; ++i){
          usages[nums[i]] = (usages[nums[i]] ?? 0) + 1;
      }
      List<int> return_list = [];
      for(var entry in usages.entries){
        if(entry.value > nums.length / 3 ){
          return_list.add(entry.key);
        }
      }
      return return_list;
  }
}
