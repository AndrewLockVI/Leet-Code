//This is a constant time solution that moves from right to left.
//each time it moves it figures out where the next question it would answer is
//then based on that it uses the points associated with that place to continue moving to the left
//thus building upon previous calculations
//Runtime: 584ms Beats: 100%
//Memory: 227.2MB Beats: 100%
class Solution {
int mostPoints(List<List<int>> questions) {
        int max = 0;
        List<int> current_val = [];
        for(int i = 0 ; i < questions.length ; ++i){
            current_val.add(0);
        }
        for(int i = questions.length - 1; i >= 0; --i){
            if(current_val.length > questions[i][1] + i + 1){
                int new_val = questions[i][0] + current_val[questions[i][1] + i + 1];
                if(new_val > max){
                    max = new_val;
                    current_val[i] = max;
                }
                else{
                    current_val[i] = current_val[i + 1];
                }
            }
            else{
                if(questions[i][0] > max){
                    max = questions[i][0];
                }
                current_val[i] = max;
            }
        }
        return max;
    }

}
