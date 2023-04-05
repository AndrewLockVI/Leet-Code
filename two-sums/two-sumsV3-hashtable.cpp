/*Conceptual:

 2 9 8 7 8 0 9 1 8 6 78 72 88 19 62
 _ _ _ _ _ _ _ _ _ _ __ __ __ __ __
[0 1 2 3 4 5 6 7 8 9 10 11 12 13 14]


//Leet Ratings
//       Speed  Memory
//Total  4ms   11.3MB    
//Beats  99.3% 13.46%
//
//This is so fast because it uses an O(n) algorithm where it only goes through
//the entire vector one time at most by utilizing a hashmap that stores
//values and the index that they occured at for faster execution at the
//cost of memory.



*/


#include <iostream>
#include <vector>
#include <map>

using namespace std;

vector<int> twoSum(vector<int>& nums, int target) {
    map<int, int> vals_map;
    int second_val;
    int first_val;
    for(int i = 0 ; i < nums.size(); ++i){
        int diff = target - nums[i];
        if(vals_map.count(diff)){
            second_val = vals_map.find(diff)->second;
            first_val = i;
            break;
        }
        vals_map.insert( pair<int, int> (nums[i] , i));
    }
    return {first_val, second_val};
}

int main(){
    vector<int> input = {0 , 3, 1};
    vector<int> new_vec = twoSum(input , 4);
    cout << new_vec[0] << " " << new_vec[1] << endl;
    return 0;
}
