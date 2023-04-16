


//Two sum using dart.
//Runtime: 279ms Beats: 93.83%
//Memory: 144MB Beats: 26.24%
void main(){
    var sol = Solution();
    var nums = <int>[];
    nums.add(10);
    nums.add(5);
    nums.add(2);
    nums.add(8);
    print(sol.twoSum(nums, 18));


}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
      var vals = new Map();
      for(int i = 0 ; i < nums.length ; ++i){
          int diff = target - nums[i];
          if(vals.containsKey(diff)){
              List<int> output = [vals[diff], i];
              return output;
          }
          else{
            vals[nums[i]] = i;
          }
      }
        List<int> output = [0 , 0];
        return output;
  }
}
