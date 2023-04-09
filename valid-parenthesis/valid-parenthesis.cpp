#include <iostream>
#include <list>


//Leet Ratings
//       Speed  Memory
//Total  0ms    6.4MB    
//Beats  100%   12.9%


using namespace std;


//Get matching parentheses for right side.
char get_match(char input){
    if(input == ')'){
        return '(';
    }
    if(input == '}'){
        return '{';
    }
    if(input == ']'){
        return '[';
    }
    return 'e';
}

//Check if parentheses are valid using a stack then checking at the end the the stack is empty.
bool isValid(string s) {
    list<char> stack;
    for(int i = 0 ; i < s.size() ; ++i){
        if(get_match(s[i]) == 'e'){
            stack.push_front(s[i]);
        }
        else{
            if(stack.front() == get_match(s[i]) ){
                stack.pop_front();
            }
            else{
                return false;
            }
        }
    }
    if(stack.empty()){
        return true;    
    }
    else{
        return false;
    }
}




int main(){
    cout << "Input parenthesis set to check: ";
    string s;
    cin >> s;
    cout << boolalpha;
    cout << isValid(s) << endl;


}
