#include <iostream>

using namespace std;


//Leet Ratings
//       Speed  Memory
//Total  0ms    6.1MB    
//Beats  100%   8.48%


//This is the function to return if guess is higher or lower than the actual value.
int guess(int n){
    if(n > 5){
        return -1;
    }
    if(n < 5){
        return 1;
    }
    if(n == 5){
        return 0;
    }
    return 100;

}

//This is the logic from the leet-code problem that loops through the list using a binary search until the answer is guessed.
int guessNumber(int n) {
   unsigned long int lower_bound = 0;
   unsigned long int upper_bound = n;
    while(true){
        unsigned long int guess_int = (lower_bound + upper_bound) / 2;
        unsigned long int guess_val = guess(guess_int + 1);
        if(guess_val == -1){
            upper_bound = guess_int;
        }
        if(guess_val == 1){
            lower_bound = guess_int;
        }
        if(guess_val == 0){
            return guess_int + 1;
        }
    }
    return 0;
}

//Constructor method.
int main(){
    int number = guessNumber(5);
    cout << number;


}


