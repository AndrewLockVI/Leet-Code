//This is a better versioni of the previous algorithm 
//that uses memoization so if a question has been answered
//before and the points that the sequence that one used is higher
//then the current one will stop. (I.e. memoization).


class Solution {
  int max_points = 0;
  List<List<int>> questions = [];
  List<int> question_max_score = [];
  int mostPoints(List<List<int>> question_list) {
      for(int i = 0 ; i < question_list.length ; ++i){
          question_max_score.add(0);
      }
      questions = question_list;
      recurse(0 , 0);
      return max_points;
  }
  void recurse(int points , int question_number){

        if(points > max_points){
            max_points = points;
        }
        if(questions.length <= question_number){
            return;
        }
        if(question_max_score[question_number] > points){
            return;
        }
        else{
            question_max_score[question_number] = points;
        }
        int point_val= questions[question_number][0];
        int bp = questions[question_number][1];
        recurse(points, question_number + 1);
        recurse(points + point_val, question_number + bp + 1);
    }
}
