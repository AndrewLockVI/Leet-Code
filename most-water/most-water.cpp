#include <iostream>
#include <vector>
using namespace std;


//Leet Ratings
//       Speed  Memory
//Total  1475ms 59.1MB    
//Beats  5.2%   8.27%
//This is the brute force method which I will optimize
//by using an inverted iteration from the end and do checks
//like I have with the last height on the lower bound.

int return_size(int x1, int x2, int y1, int y2){
    if(y1 > y2){
        return ((x2-x1) * y2);
    }
    else{
        return ((x2-x1) * y1);
    }
}

int maxArea(vector<int>& height) {
    int largest_area = 0;
    int last_height = -1;
    for(int i = 0 ; i < height.size() ; ++i){
        if(height[i] > last_height){
            last_height = height[i];
            for(int x = i ; x < height.size() ; ++x){
                int curr_val = return_size(i , x, height[i], height[x]);
                if( curr_val > largest_area){
                    largest_area = curr_val;
                }
            }
        }
    }
    return largest_area;
}



int main(){

    vector<int> heights = {3, 1,2, 4, 5, 6, 7,8,8,8,8,4,4,4,4,4,4,4,4};
    cout << maxArea(heights) << endl;
    return 0;
}
