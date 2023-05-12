//Given a list of questions where the first value is the number
//of points awarded for the question and the second is the brainpower
//return the highest number of points one could achieve assuming that if 
//you answer a question that you will need to skip the next questions where n
//is the brainpower of the question.
//My solution is 2^n time complexity because each question can either be answered
//or not thus creating two paths for each question in the list.
//Time : TLE
//Memory: TLE
class Solution {
  int max_points = 0;
  List<List<int>> questions = [];
  int mostPoints(List<List<int>> question_list) {
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
        recurse(points, question_number + 1);
        int point_val= questions[question_number][0];
        int bp = questions[question_number][1];
        recurse(points + point_val, question_number + bp + 1);
    }
}
