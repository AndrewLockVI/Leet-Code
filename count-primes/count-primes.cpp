#include <iostream>
#include <vector>
#include <cmath>
using namespace std;

//This is the most optimized version I could get where it only checks values up to the square
//root -1 of the original value, and it only checks odd numbers.
//TLE FROM LEETCODE

int countPrimes(int n) {
   vector <int> previous_primes;
   previous_primes.push_back(2);
    bool prime = true;
    if(n <= 2){
        return 0;
    }
    int cut_off = sqrt(n-1);
    for(int i = 3 ; i < n; ++++i){
        for(int x = 0 ; x < previous_primes.size(); ++x){
            if(i % previous_primes[x] == 0){
                prime = false;
                break;
            }
            if(previous_primes[x] > cut_off ){
                break;
            }

        }
        if(prime){
            previous_primes.push_back(i);
            cout << i << " ";

        }
        else{
            prime = true;
        }
    }
    return previous_primes.size();
}


int main(){
  cout << "Enter number to find primes before: ";
  int prime_val;
  cin >> prime_val;  
  int vals = countPrimes(prime_val);

  cout << endl << endl << "The total number of primes before " << prime_val << " is " << vals << endl;
  

}
