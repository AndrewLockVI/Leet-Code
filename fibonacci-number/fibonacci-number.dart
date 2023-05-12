//Fib calculation using dart and memoization/dynamic programming
void main(){
    print(fib(5));
    print(fib(39));
    print(fib(30));
}

Map<int,int> fib_map = {};

int fib(int n){
  if(fib_map.containsKey(n)){
    return fib_map[n]!;
  }
  if(n <= 1){
    return 1;
  }
  int fib_val = fib(n-1) + fib(n-2);
  fib_map[n] = fib_val;
  return(fib_val);
}
