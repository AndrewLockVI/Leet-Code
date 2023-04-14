#include <iostream>
#include <vector>
using namespace std;

//Runtime: 4ms Beats: 82.49%
//Memory: 7.6MB Beats: 98.89%
int num_zeroes(int num){
    int ones = 0;
    while (num > 0){
        ones += num%2;
        num = num/2;
    }
    return ones;
}

vector<int> countBits(int n) {
    vector<int> out(n+1 , 0);
    for(int i = 0 ; i <= n; ++i){
        out[i] = num_zeroes(i);
    }
    return out; 
}


int main(){

    cout << "Input number: ";
    int val = 0;
    cin >> val;
    vector<int> out = countBits(val);
    for(int i = 0; i < out.size() ; ++i){
        cout << out[i] << " ";
    }
    cout << endl;
    return 0;
}
