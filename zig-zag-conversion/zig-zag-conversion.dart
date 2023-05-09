//Return a string if it were to be placed in a matrix with a  zig zag pattern
//and then returned read from left to right top to bottom.
//Ex.
//Input:
//ThisQuestionSucks | numRows = 3
//T q t s c
//hsusinuk
//i e o c
//Output:
//TQtSshsusinukieoc
//My solution simulates creating a zigzagged 2d array by 
//creating the first array and filling it to the height. Then
//height -2 times moving to the side placing the character one
//higher each time. At the end the matrix is read and returned.
//The time complexity of this code is O(n) where n is the length of the
//string.
//Time:  860ms Beats: 6.17%
//Memory: 187.8MB Beats: 6.17%

class Solution {
  String convert(String s, int numRows) {
      List<List<String>> zigzag = [];
      int placed = 0;
      while(placed < s.length){
          zigzag.add([]);
          for(int i = 0 ; i < numRows && placed < s.length; ++i){
              zigzag[zigzag.length - 1].add(s[placed]);
              placed += 1;
          }
          for(int i = 0 ; i < numRows - 2 ; ++i){
              zigzag.add([]);
              for(int x = 0 ; x < numRows - i - 2; ++x){
                  zigzag[zigzag.length - 1].add("");
              }
              if(placed < s.length){
                zigzag[zigzag.length - 1].add(s[placed]);
                placed += 1;
              }
              else{
                  break;
              }

          }
      }
      String ret_val = "";
      for(int x = 0 ; x < zigzag[0].length; ++x){
        for(int i = 0 ; i < zigzag.length ; ++i){
            if(zigzag[i].length - 1 >= x){
                ret_val += zigzag[i][x];
            }
          }
      }

      return ret_val;
  }
}
