//Given a string num return the largest continuous
//integer substring that is odd. 

//To solve this I iterated from the end to the start of the array
//each time checking to see if the current value is odd. If it is
//then from 0 to the current index would be the largest odd number
//and is thus returned. 

//Time: 276ms Beats: 80%
//Memory: 148.7MB Beats: 40%

class Solution {
  String largestOddNumber(String num) {
      for(int i = num.length - 1 ; i >= 0 ; --i){
          if(int.parse(num[i]) % 2 == 1){
              return num.substring(0,i + 1);
          }
      }
      return '';
  }
}
