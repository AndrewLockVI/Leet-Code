//Given a number n return all combinations of valid parenthesis
//with n sets of parentheses. 
//To do this I used recursion to follow each branch until
//they ended and then returned each set of valid parenthesis.
//The time complexity of this code is 2^n where n is the number
//of sets of parenthesis to generate.
//Time: 273ms Beats: 47.50%
//Memory: 143.2MB Beats: 10%
class Solution {
  List<String> generateParenthesis(int n) {
      return parenthesis(n , n);
  }
  List<String> parenthesis(int left , int right){
      if(left == 0 && right == 0){
          return [""];
      }
      List<String> return_ls = [];
      if(left != 0){
          List<String> l1 = parenthesis(left - 1 , right);
          for(int i = 0 ; i < l1.length ; ++i){
            l1[i] = '(' + l1[i];
            return_ls.add(l1[i]);
          }
      }
      if(right != 0 && left < right){
          List<String> r1 = parenthesis(left , right - 1);
          for(int i = 0 ; i < r1.length ; ++i){
              r1[i] = ')' + r1[i];
              return_ls.add(r1[i]);
          }
      }
      return return_ls;
  }
}
