//3 sum solution using hashmap to check if the final value exists
//so that O(n^2) time complexity can be achieved instead of O(n^3)

class Solution {
  Set<String> set_strs = {};
  Map<int, int> vals = {};
  List<List<int>> threeSum(List<int> nums) {
    for(int i = 0 ; i < nums.length ; ++i){
        vals[nums[i]] = (vals[nums[i]] ?? 0) + 1;
    }
    List<List<int>> all_perm = permutations(nums);
    return all_perm;
  }
  List<List<int>> permutations(List<int> nums){
    List<List<int>> return_list = [];
    for(int i = 0 ; i < nums.length ; ++i){
      for(int x = i + 1; x < nums.length ; ++x){
          int val_needed = (nums[i] + nums[x]) * -1;
          if(vals.containsKey(val_needed)){
            List<int> current =[nums[i] , nums[x] , val_needed];
            current.sort();
            String current_str = "";
            for(int i = 0 ; i < current.length ; ++i){
              current_str += current[i].toString() + " ";
            }
            if(set_strs.contains(current_str)){
              continue;
            }
            set_strs.add(current_str);
            List<int> dupes = [];
            if(current[0] == current[1] && current[1] == current[2]){
              dupes.add(current[0]);
              dupes.add(current[0]);
              dupes.add(current[0]);
            }
            else if(current[0] == current[1]){
              dupes.add(current[0]);
              dupes.add(current[0]);
            }
            else if(current[0] == current[2]){
              dupes.add(current[0]);
              dupes.add(current[0]);
            }
            else if(current[2] == current[1]){
              dupes.add(current[2]);
              dupes.add(current[2]);
            }

            if(dupes.length > 0){
              if(dupes.length > (vals[dupes[0]] ?? 0 )){
                continue;
              }
            }
            return_list.add(current);
          }
        }
    }
    return return_list;
  }
}
