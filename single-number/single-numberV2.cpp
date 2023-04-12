#include <iostream>
#include <vector>
#include <unordered_map>
#include <algorithm>
using namespace std;


// Time:    Memory:
// 27ms     20.2MB
// 35.71%   14.99%
//

//Another solution that involves sorting the list and then checking to
//see if the next value in the list is equal to the current value.
    int singleNumber(vector<int>& nums) {
        sort(nums.begin(), nums.end());
        for(int i = 0 ; i < nums.size() - 1 ; i += 2){
            if(nums[i] != nums[i + 1]){
                return nums[i];
            }
        }
        return nums[nums.size() - 1];
    }


int main(){
    //Ans should be 4
    vector <int> vec = {0 , 10, 0, 10, 2, 2, 3, 4, 3};
    cout << singleNumber(vec) << endl;

}
