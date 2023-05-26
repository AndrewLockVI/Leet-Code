//Given a matrix return the k weakest rows where a row
//is weaker if it has less 1's in it, or it is in front of another
//row that has the same number of 1's in it. To do this
//I first found the weakest rows with the least ones.
//I then iterated through the list searching out the weakest
//rows each time and returned the final list.
//The time complexity is O(n^2).
//Time: 265ms Beats: 92.86%
//Memory: 144.5MB Beats: 92.86%

class Solution {
  List<int> kWeakestRows(List<List<int>> mat, int k) {
      List<int> strengths = [];
      for(int i = 0 ; i < mat.length ; ++i){
          int current = 0;
          for(int x = 0 ; x < mat[i].length; ++x){
              if(mat[i][x] == 0){
                  break;
              }
              current += 1;
          }
          strengths.add(current);
      }
      List<int> ret_list = [];
      List<int> sorted = List.from(strengths);
      sorted.sort();
      int itr = 0;
      int curr_val = sorted[0];
      int sort_val = 0;
      while(sort_val < k){
          if(strengths[itr] == curr_val){
              ret_list.add(itr);
              sort_val += 1;
              if(sorted.length > sort_val){
                curr_val = sorted[sort_val];
              }
              else{
                  break;
              }
              if(curr_val == strengths[itr]){
                  itr += 1;
                  continue;
              }
              itr = 0;
          }
          else{
              itr += 1;
          }
      }
      return ret_list;
  }
}
