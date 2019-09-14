#include <iostream>
#include <vector>
long long mem[10001];

long long fib(long long n){
    if (n < 3) return 1;
    long long fn1 , fn2;

    if (mem[n-1] != 0) fn1 = mem[n-1];
    else {
        fn1 = fib(n-1);
        mem[n-1] = fn1;
    }

    if (mem[n-2] != 0) fn2 = mem[n-2];
    else {
        fn2 = fib(n-2);
        mem[n-2] = fn2;
    }

    return fn1 + fn2;
}

int main(){
    for (int i = 0; i < 10000 ; i++){
        mem[i] = 0;
    }

    std::cout << fib(5000) << std::endl;
    return 0;
}

