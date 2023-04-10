#include <iostream>
using namespace std;



//Leet Ratings
//       Speed  Memory
//Total  0ms    5.9MB    
//Beats  100%   61.85%



int numWaterBottles(int numBottles, int numExchange) {

    //numBottles is used to track the number of empty bottles
    //given that all bottles are drank right at the beginning.
    int num_drank = numBottles;
    while(numBottles >= numExchange){
        num_drank += 1;
        numBottles += 1;
        numBottles = numBottles - numExchange;
    }
    return num_drank;
}


int main(){
    cout << "Number of Bottles To Start: ";
    int bottles_start = 0;
    int bottles_exchange = 0;
    cin >> bottles_start;
    cout << "Number of Bottles To Exchange: ";
    cin >> bottles_exchange;
    cout << numWaterBottles(bottles_start, bottles_exchange) << endl;
}
