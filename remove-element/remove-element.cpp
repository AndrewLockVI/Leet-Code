#include <iostream>
#include <vector>
using namespace std;

//Leet Ratings
//       Speed  Memory
//Total  0ms    8.9MB    
//Beats  100%   47.58%
//


//This question is terrible!
//This is basically just a side effect where you need
//to update the vector and return the number of good 
//values in it.


int removeElement(vector<int>& nums, int val) {
    int count = 0;
    vector<int> num;
    for(int i = 0 ; i < nums.size() ; ++i){
        if(nums[i] != val){
            num.push_back(nums[i]);
            count += 1;
        }
    }
    nums = num;
    return count;
}


int main(){
    vector <int> vec = {0, 1, 2, 3, 4, 5, 6,6,6,5,4};
    removeElement(vec , 4);
    for(int i = 0 ; i < vec.size(); ++i){
        cout << vec[i] << " ";
    }
    cout << endl;

}
