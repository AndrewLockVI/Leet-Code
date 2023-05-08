//Find the minimum sum of a four digit number where the sum
//is the total of two seperate groups of digits contained in the number.
//I solved this problem in this way with string to int to allow
//for this algorithm to work with any length of number that is used as the input
//which would make it better for expandability in the future.
//The time complexity of this code is O(n) where n is the number
//of digits in the input. 
//Time: 244ms Beats: 93.33%
//Memory: 140.1MB Beats: 100%

class Solution {
  int minimumSum(int num) {
      List<int> digits = [];
      while(num > 0){
          digits.add(num % 10);
          num = (num / 10).toInt();

      }
      digits.sort();
      print(digits);
      String first = "";
      String second = "";

      for(int i = 0 ; i < digits.length ; i += 2){
        first += digits[i].toString();
        second += digits[i + 1].toString();
      }
  
      return int.parse(first) + int.parse(second);
  }
}
