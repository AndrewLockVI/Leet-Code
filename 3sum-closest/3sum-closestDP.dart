//This solution uses DP to recursively break down the problem and return
//the result. This is not a very good solution because there is not
//a lot of stuff to memoize so it is not super efficient.

class Val{
  int val = 0;
  int distance = 0;
  Val(int distance_, int val_){
    val = val_;
    distance = distance_;
  }
}

class Solution {
  int threeSumClosest(List<int> nums, int target) {
    int close = (closest(nums, target, 0, 0).val);
    return close;
}
  Val closest(List<int> nums , int target , int depth, int val){
    if(depth == 3){
       return new Val(target , val);
    }
    Val ret = new Val(1000000000, 0);
    for(int i = 0 ; i < nums.length ; ++i){
      List<int> new_nums = List.from(nums);
      int current = new_nums[i];
      new_nums.removeAt(i);
      Val return_val = closest(new_nums, target - current, depth + 1, val + current);
      if(return_val.distance.abs() < ret.distance.abs()){
        ret = return_val;
      }
    }
    return ret;
  }
}
