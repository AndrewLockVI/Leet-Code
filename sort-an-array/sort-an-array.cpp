#include <vector>
#include <iostream>


//Leet Ratings
//       Speed  Memory
//Total  105ms   68.4MB    
//Beats  99.25%  45.24%
// This was very fast and used count sort. I would like to go through this again
// with a 0(nlog(n)) sorting algorithm.


using namespace std;


vector<int> sortArray(vector<int>& nums) {
    int highest_val = nums[0];
    int lowest_val = nums[0];
    for(int i = 0 ; i < nums.size() ; ++i ){
        if(nums[i] > highest_val){
            highest_val = nums[i];
        }
        if(nums[i] < lowest_val){
            lowest_val = nums[i];
        }
    }
    int diff = highest_val - lowest_val;
    vector<int> counted_nums(diff + 1, 0);
    for(int i = 0; i < nums.size(); ++i){
        counted_nums[nums[i] - lowest_val] = counted_nums[nums[i] - lowest_val] + 1;
    }

    vector<int> sorted_nums(nums.size(), 0);
    int count = 0;
    for (int i = 0 ; i < counted_nums.size() ; ++i){
        int val = counted_nums[i];
        int stored_val = i + lowest_val;
        for(int x = 0 ; x < val; ++x){
            sorted_nums[count] = stored_val;
            count += 1;
        }
    }
    return sorted_nums;
}

int main(){

    vector<int> vec = {0 , 3, 5, 2, 1, 5, 65};
    vec = sortArray(vec);
    cout << "[";
    for(int i = 0; i < vec.size() - 1; ++i){
        cout << vec[i] << ",";
    }
    cout << vec[vec.size()-1] << "]" << endl;

}
