//Given the rules of Conway's game of life create a function
//that simulates one iteration of it. 
//I simply iterated through each square of the original matrix
//and checked the neighbors it has then based on that in the original matrix
//it was updated.
//Time: 243ms Beats: 100%
//Memory: 141MB Beats: 100%
class Solution {
  void gameOfLife(List<List<int>> board) {
      List<List<int>> temp = [];
      for(int i = 0 ; i < board.length ; ++i){
          temp.add(List.from(board[i]));
      }
      for(int i = 0 ; i < temp.length ; ++i){
          for(int x = 0 ; x < temp[i].length ; ++x){
              bool alive = (temp[i][x] == 1);
              int neighbors = 0;
              // Top
              if(i != 0){
                  if(temp[i - 1][x] == 1){
                      neighbors += 1;
                  }
              }
              // Left
              if(x != 0){
                  if(temp[i][x - 1] == 1){
                      neighbors += 1;
                  }
              }
              // Right
              if(x != temp[i].length - 1){
                  if(temp[i][x + 1] == 1){
                      neighbors += 1;
                  }
              }
              // Bottom
              if(i != temp.length - 1){
                  if(temp[i + 1][x] == 1){
                      neighbors += 1;
                  }
              }
              // Top Left
              if(i != 0 && x != 0){
                  if(temp[i - 1][x - 1] == 1){
                      neighbors += 1;
                  }
              }
              // Top Right
              if(i != 0 && x != temp[i].length - 1){
                  if(temp[i - 1][x + 1] == 1){
                      neighbors += 1;
                  }
              }
              // Bottom Left
              if(i != temp.length - 1 && x != 0){
                  if(temp[i + 1][x - 1] == 1){
                      neighbors += 1;
                  }
              }
              // Bottom Right
              if(i != temp.length - 1 && x != temp[i].length - 1){
                  if(temp[i + 1][x + 1] == 1){
                      neighbors += 1;
                  }
              }
              if(alive){
                  if(neighbors < 2 || neighbors > 3){
                      board[i][x] = 0;
                  }
              }
              else{
                  if(neighbors == 3){
                      board[i][x] = 1;
                  }
              }
          }
      }
  }
}
