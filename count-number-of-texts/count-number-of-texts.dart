//Given an input count the number of possible texts sent by pressing the keys of a phone keyboard in this order.
//The problem is looking for all permutations of strings that can result from pressing the number keys in a certain order.
//My code does not work for very large inputs because it recurses too deep so I will convert this to iterative and resubmit.

class Solution {
    Map<int , List<String>> options = {};
    Map<String , int> memo = {};
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
  int countTexts(String pressedKeys) {
      if(pressedKeys.length == 0){
          return 1;
      }
      String current_str = pressedKeys;
      if(memo[current_str] != null){
          return (memo[current_str] ?? 0);
      }
      int ret_val = 0;
      String new_pressed = pressedKeys.substring(1);
      ret_val += countTexts(new_pressed);
      ret_val = (ret_val % (pow(10, 9) + 7)).toInt();
      String current = pressedKeys.substring(0,1);
      for(int i = 1 ; i < (options[int.parse(current)]?.length ?? 0) && i < pressedKeys.length; ++i){
          if(pressedKeys[i] != pressedKeys[i - 1]){
              break;
          }
          new_pressed = new_pressed.substring(1);
          ret_val += countTexts(new_pressed);
          ret_val = (ret_val % (pow(10, 9) + 7)).toInt();
      }
      memo[current_str] = ret_val;
      return (ret_val % (pow(10, 9) + 7)).toInt();
  }
}
