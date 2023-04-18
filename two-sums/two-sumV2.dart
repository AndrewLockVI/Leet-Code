//Doing this again to get more comfortable with maps.
//Also, using ?? -1 means that if the first val is null then return the value
//of -1

//Runtime: 320ms Beats: 72.49%
//Memory: 143.7MB Beats 36.55%

void main(){
    Solution sol = new Solution();
    List<int> l1 = [0,2,2,3,4,5,6,7,8,65,3,2,3,4,5,3,2,5,78,7,4,3,2,4,6,7,8,8,8,989,9,9,6,642,6,456,456,45,6,3456,45,6,3465];
    int target = 10;
    print(sol.twoSum(l1,target));
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
      
      Map<int, int> vals = {};
      for(int i = 0 ; i < nums.length ; ++i){
          int diff = target - nums[i];
          if(vals.containsKey(diff)){
              return [vals[diff]?? -1, i];
          }
          else{
              vals[nums[i]] = i;
          }
      }
      return [];
  }


}
