//Given two lists find the maximum subsequence where the subsequence length is
//k, and the subsequence value is all values from the nums1 list added together 
//multiplied by the lowest value in the nums2 list.
//My code tries all permutations and uses DP/Memoization
//to remember all tried permutations to not repeat itself. This
//solution is quite slow and gives a TLE.

class Solution {
  Map<String, int> memo = {};
  int maxScore(List<int> nums1, List<int> nums2, int k) {
    return max(nums1,nums2,[[], []] , k);
  }

  int max(List<int> nums1 , List<int> nums2 , List<List<int>> current_nums , int k){
    String curr_str = "";
    current_nums[0].sort();
    current_nums[1].sort();
    for(int i = 0 ; i < current_nums[0].length ; ++i){
      curr_str += current_nums[0][i].toString() + " " + current_nums[1][i].toString();
    }
    if(memo.containsKey(curr_str)){
      return (memo[curr_str] ?? 0);
    }
    int current_val = 0;
    if(k == 0){
      int lowest = current_nums[1][0];
      for(int i = 0 ; i < current_nums[0].length ; ++i){
        current_val += current_nums[0][i];
      }
      current_val = current_val * lowest;
    }
    else{
      for(int i = 0 ; i < nums1.length ; ++i){
        List<int> new_nums1 = List.from(nums1);
        List<int> new_nums2 = List.from(nums2);
        int current1 = new_nums1[i];
        int current2 = new_nums2[i];
        new_nums1.removeAt(i);
        new_nums2.removeAt(i);
        List<List<int>> new_nums_list = [List.from(current_nums[0]), List.from(current_nums[1])];
        new_nums_list[0].add(current1);
        new_nums_list[1].add(current2);
        int curr = max(new_nums1 , new_nums2, new_nums_list , k - 1);
        if(curr > current_val){
          current_val = curr;
        }
      }
    }
    memo[curr_str] = current_val;
    return current_val;
  }
}
