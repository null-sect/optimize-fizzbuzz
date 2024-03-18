#include <stdio.h>
#include <stdbool.h>

int main(void){
  int i;
  for (i = 1; i <= 100; i++){
    bool FizzBuzz = i % 15 == 0;
    bool Buzz = i % 5 == 0;
    bool Fizz = i % 3 ==0;

    if (FizzBuzz){
      printf("FizzBuzz\n");
    } else if (Buzz){
      printf("Buzz\n");
    } else if (Fizz){
      printf("Fizz\n");
    } else { 
      printf("%d\n", i);
    }
  }
  return 0;
}

