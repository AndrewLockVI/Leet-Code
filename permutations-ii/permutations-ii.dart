//Find all permutations of a list of nums ensuring that
//duplicate permutations are not returned despite the fact
//that there may be duplicate values in the nums list.
//To solve this I first found every permutation then iterated through that
//list of permutations comparing the lists with existing lists in the return to verify
//they were unique. This is not super fast, but it does work better than any other solution
//I could think of.
//Time: 1183ms Beats: 11.11%
//Memory: 206.9MB Beats: 11.11%

class Solution {
  List<List<int>> permuteUnique(List<int> nums) {
      List<List<int>> return_list = allPerms(nums);
      List<List<int>> return_ls = [];
      int itr = 0;
      for(List<int> list in return_list){
          bool dupe = false;
          for(int i = itr + 1 ; i < return_list.length ; ++i){
              if(equal_lists(list , return_list[i])){
                  dupe = true;
                  break;
              }
          }
          if(!dupe){
            return_ls.add(list);
          }
          itr += 1;
      }
      return return_ls;
  }


  bool equal_lists(List<int> list_one , List<int> list_two){
      if(list_one.length != list_two.length){
          return false;
      }
      for(int i = 0 ; i < list_one.length ; ++i){
          if(list_one[i] != list_two[i]){
              return false;
          }
      }
      return true;
  }



    List<List<int>> allPerms(List<int> nums) {
      List<List<int>> return_list = [];
      if(nums.length == 1){
          return [[nums[0]]];
      }
      for(int i = 0 ; i < nums.length ; ++i){
          List<int> new_nums = List.from(nums);
          int removed_val = new_nums[i];
          new_nums.removeAt(i);
          List<List<int>> returned_list = allPerms(new_nums);
          for(int x = 0 ; x < returned_list.length ; ++x){
             returned_list[x].add(removed_val);
             return_list.add(returned_list[x]);
          }
          
      }
      return return_list;
  }
}
