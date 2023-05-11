//Return a list of all possible paths that lead to the highest node starting from 0.
//The input list is a list of edges for each node thus a list of lists.
//The time complexity of this code is O(k^n) where n is the number of nodes and
//k is the number of edges per node (assuming an equal number of edges per node which is not given).
//Time: 425ms Beats: 50%
//Memory: 156.8MB Beats: 50%

class Solution {
  List<List<int>> paths = [];
  int highest_val = 0;
  List<List<int>> graph = [];
  List<List<int>> allPathsSourceTarget(List<List<int>> graph_in) {
      graph = graph_in;
      for(int i = 0 ; i < graph.length ; ++i){
          for(int x = 0 ; x < graph[i].length ; ++x){
              if(graph[i][x] > highest_val){
                  highest_val = graph[i][x];
              }
          }
      }
      recurse([0]);
      return paths;
  }

  void recurse(List<int> visited){
      print(visited);
      if(visited[visited.length - 1] == highest_val){
          paths.add(visited);
          return;
      }
      for(int i = 0 ; i < graph[visited[visited.length - 1]].length; ++i){
          if(visited.contains(graph[visited[visited.length - 1]][i]) == false){
            List<int> next_visited = List<int>.from(visited);
            next_visited.add(graph[visited[visited.length - 1]][i]);
            recurse(next_visited);
          }
      }
  }


}
