#include <iostream>
#include <map>
#include <vector>


//Leet Ratings
//       Speed  Memory
//Total  21ms    19.6MB    
//Beats  57.4%   37.39%



using namespace std;

int majorityElement(vector<int>& nums) {
    map <int, int> num_map;
    for(int i = 0; i < nums.size() ; ++i){
        if(num_map.find(nums[i]) != num_map.end()){
            num_map[nums[i]] += 1;
        }
        else{
            num_map.insert({nums[i] , 1});
        }
    }

    //Get most common number

    int largest_val = nums[0];
    int largest_num = 0;
    for(auto i = num_map.begin() ; i != num_map.end() ; ++i){
        if(i -> second > largest_num){
            largest_num = i ->second;
            largest_val = i -> first;
            
        }
    }
    return largest_val;
}




int main(){
    vector<int> nums = {0, 2, 2, 4, 5, 6, 7, 2 , 2, 2, 2};
    cout << majorityElement(nums) << endl;


    
    return 0;
}
