#include <iostream>
#include <vector>

using namespace std;


//Leet Ratings
//       Speed  Memory
//Total  18ms    17.9MB    
//Beats  77.86%  94.74%



int missingNumber(vector<int>& nums) {

    vector <int> num_seq(nums.size() + 1 , 0) ;
    for(int i = 0 ; i < nums.size() ; ++i){
        num_seq[nums[i]] = 1;
    }
    for(int i = 0 ; i < num_seq.size() ; ++i){
        if(num_seq[i] == 0){
            return i;
        }
    }
    return 0;
}

int main(){

    vector <int> search_vec = {0, 1 , 2 ,3 ,4 ,6 , 7};
    cout << missingNumber(search_vec) << " is the missing number from the list" <<  endl;

}





