//Find the distance to the nearest 0 for every cell 
//and return back a matrix with those distances.
//This implementation is too slow because of the List.from(visited)
//which basically makes it so that certain tiles will be revisited.
//This is necessary however because I am using dfs so a tile may
//be visited but in a suboptimal way to arrive there. To fix this
//the best thing to do would be to use bfs instead of dfs.
//Time: TLE
//Memory :TLE
class Solution {
  List<List<int>> mat = [];
  List<List<int>> answers = [];
  List<List<int>> updateMatrix(List<List<int>> matrix) {
    mat = matrix;
    for(int i = 0; i < mat.length ; ++i){
      answers.add(List.filled(mat[0].length , -1));
    }
    for(int i = 0 ; i < answers.length ; ++i){
      for(int x = 0 ; x < answers[0].length ; ++x){
        answers[i][x] = recurse([i,x], []);
      }
    }

    return answers;
  }

  int recurse(List<int> position, List<String> visited){
    if(answers[position[0]][position[1]] != -1){
      return answers[position[0]][position[1]];
    }
    visited.add(position[0].toString() + " " + position[1].toString());
    if(mat[position[0]][position[1]] == 0){
      return 0;
    }
    int min_dist = -1;
    bool left = visited.contains((position[0] - 1).toString() + " " + position[1].toString());
    bool right = visited.contains((position[0] + 1).toString() + " " + position[1].toString());
    bool up = visited.contains(position[0].toString() + " " + (position[1] - 1).toString());
    bool down = visited.contains(position[0].toString() + " " + (position[1] + 1).toString());
    //left,3,
    if(position[0] > 0 && !left){
      int current = recurse([position[0] - 1, position[1]], List.from(visited));
      if(current < min_dist || min_dist == -1){
        min_dist = current;
      }
    }
    //right
    if(position[0] < mat.length - 1 && !right){
      int current = recurse([position[0] + 1, position[1]] , List.from(visited));
      if(current < min_dist || min_dist == -1){
        min_dist = current;
      }
    }
    //up
    if(position[1] > 0 && !up){
      int current = recurse([position[0], position[1] - 1] , List.from(visited));
      if(current < min_dist || min_dist == -1){
        min_dist = current;
      }
    }
    //down
    if(position[1] < mat[0].length - 1 && !down){
      int current = recurse([position[0], position[1] + 1] , List.from(visited));
      if(current < min_dist || min_dist == -1){
        min_dist = current;
      }
    }
    if(min_dist == -1){
      return 1000000000;
    }
    return min_dist + 1;
  }
}
