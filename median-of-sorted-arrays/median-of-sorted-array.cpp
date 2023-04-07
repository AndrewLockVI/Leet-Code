#include <iostream>
#include <vector>
#include <algorithm>

//Leet Ratings
//       Speed  Memory
//Total  27ms    89.8MB    
//Beats  97.24%  42.65%
//


using namespace std;

double findMedianSortedArrays(vector<int>& nums1, vector<int>& nums2) {

    for(int i = 0; i < nums2.size() ; ++i){
        nums1.push_back(nums2[i]);
    }
    sort(nums1.begin(), nums1.end());
    
    double median;
    if(nums1.size() % 2 == 0){
        int middle = (nums1.size() / 2) - 1;
        median = double((nums1[middle] + nums1[middle + 1])) / 2;
    }
    else{
        median = nums1[nums1.size() / 2];
    }
    return median;
}




int main(){

    vector <int> first = {0, 10, 15, 20, 25};
    vector <int> second = {0 , 23, 29, 30, 50};
    cout << findMedianSortedArrays(first, second) << endl;



}
