//Given a list of numbers return all possible permutations that could result from the given inputs assuming that
//each number can be any of the associated letters when looking at an old phone where you can access letters by
//repeating numbers.
//Time: 247ms Beats: 77.78%
//Memory: 141MB Beats: 38.89%

class Solution {
  Map<int , List<String>> options = {};
  int original_length = -1;
  Solution(){
      options = {
          2 : ["a" , "b" , "c"],
          3 : ["d" , "e" , "f"],
          4 : ["g" , "h" , "i"],
          5 : ["j" , "k" , "l"],
          6 : ["m" , "n" , "o"],
          7 : ["p" , "q" , "r" , "s"],
          8 : ["t" , "u" , "v"],
          9 : ["w" , "x" , "y" , "z"]
      };
  }
  List<String> letterCombinations(String digits) {
    if(original_length == -1){
        original_length = digits.length;
        if(digits.length == 0){
            return [];
        }
    }
    if(digits.length == 0){
        return [""];
    }
    List<String> ret_list = [];
    String new_digits = digits.substring(1);
    List<String> vals = (options[int.parse(digits[0])] ?? []);
    for(int x = 0 ; x < vals.length ; ++x){
        List<String> returned_list = letterCombinations(new_digits);
        for(int y = 0 ; y < returned_list.length ; ++y){
            ret_list.add(vals[x] + returned_list[y]);
        }
    }
      return ret_list;
  }
}
