#include <iostream>
#include <vector>
#include <unordered_map>
using namespace std;


// Time:    Memory:
// 27ms     20.2MB
// 35.71%   14.99%
//
// I think this is a fine solution to the problem using maps albeit not the fastests.


int singleNumber(vector<int>& nums) {
    unordered_map<int , int>  searching_vals;

    //Iterate through the vector and place the vals in a map
    for(int i = 0 ; i < nums.size() ; ++i){
        if(searching_vals.find(nums[i]) == searching_vals.end()){
            searching_vals.insert(pair(nums[i] , 1));
        }
        else{
            auto it = searching_vals.find(nums[i]);
            it->second = 2;
        }
    }

    //Iterate through the list to find the orphan value.
    for(auto itr = searching_vals.begin(); itr != searching_vals.end() ; ++itr){
        if(itr->second == 1){
            return itr->first;
        }
    }
    return 0;

}



int main(){
    //Ans should be 4
    vector <int> vec = {0 , 10, 0, 10, 2, 2, 3, 4, 3};
    cout << singleNumber(vec) << endl;

}
