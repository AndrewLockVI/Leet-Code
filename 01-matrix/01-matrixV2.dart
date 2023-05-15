//Memoized version using bfs searching from each 0. This again
//does not work because there are some lists with lots of 0's in them.
//Time: TLE
//Memory: TLE
class Solution {
  List<List<int>> updateMatrix(List<List<int>> mat) {
      List<List<int>> answers = [];
      for(int i = 0 ; i < mat.length ; ++i){
          answers.add([]);
          for(int x = 0 ; x < mat[i].length ; ++x){
              answers[i].add(-1);
          }
      }

      for(int i = 0 ; i < answers.length ; ++i){
          for(int x = 0 ; x < answers[0].length ; ++x){
              if(mat[i][x] == 0){
                set_distances([i,x], mat, answers);
              }
          }
      }
      return answers;
  }

  void set_distances(List<int> find, List<List<int>> matrix, List<List<int>> distances){
      List<List<int>> search_vals = [];
      Set<String> visited = {};
      distances[find[0]][find[1]] = 0;
      if(find [0] > 0){
          search_vals.add([find[0] - 1, find[1]]);
      }
      if(find[1] > 0){
          search_vals.add([find[0], find[1] - 1]);
      }
      if(find[0] < matrix.length - 1){
          search_vals.add([find[0] + 1, find[1]]);
      }
      if(find[1] < matrix[0].length - 1){
          search_vals.add([find[0], find[1] + 1]);
      }
      int dist = 1;

      while(search_vals.length > 0){
          int init_len = search_vals.length;
          for(int i = 0 ; i < init_len ; ++i){
            List<int> current = search_vals[i];
            int currentx = current[0];
            int currenty = current[1];

            if(visited.contains(currentx.toString() + " " + currenty.toString())){
                continue;
            }
            visited.add(currentx.toString() + " " + currenty.toString());


            if(matrix[currentx][currenty] == 0){
                distances[currentx][currenty] = 0;
                continue;
            }
            if(dist < distances[currentx][currenty] || distances[currentx][currenty] == -1){
                distances[currentx][currenty] = dist;
            }
            
            if(currentx > 0){
                search_vals.add([currentx - 1, currenty]);
            }
            if(currenty > 0){
                search_vals.add([currentx, currenty - 1]);
            }
            if(currentx < matrix.length - 1){
                search_vals.add([currentx + 1, currenty]);
            }
            if(currenty < matrix[0].length - 1){
                search_vals.add([currentx, currenty + 1]);
            }

          }
          dist += 1;
          search_vals = search_vals.sublist(init_len);
      }



  }


     
}
