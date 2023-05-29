//Given a list nums return the lowest positive integer that does not appear
//in the nums list. 
//To solve this I first created a set and placed all values of the nums list into it. 
//Then I went through all positive numbers until finding the first one that does not appear in the set.
//At that point I return the value that was not found. 
//Time: 295ms Beats: 100% 
//Memory: 178MB Beats: 50%

class Solution {
  int firstMissingPositive(List<int> nums) {
      Set<int> vals = {};
      for(int i = 0 ; i < nums.length ; ++i){
          vals.add(nums[i]);
      }
      int itr = 1;
      while(true){
          if(!vals.contains(itr)){
              return itr;
          }
          itr += 1;
      }
      return 0;
  }
}
