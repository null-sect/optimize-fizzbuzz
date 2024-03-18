#include <stdio.h>

void fizzBuzzOptimized(int n) {
  int i;
  int flags[n + 1]; // フラグ配列を作成

  // フラグ配列を初期化
  for (i = 0; i <= n; i++) {
    flags[i] = 0;
  }

  // 3の倍数のフラグを立てる
  for (i = 3; i <= n; i += 3) {
    flags[i] |= 1;
  }

  // 5の倍数のフラグを立てる
  for (i = 5; i <= n; i += 5) {
    flags[i] |= 2;
  }

  for (i = 1; i <= n; i++) {
    switch (flags[i]) {
      case 0:
        printf("%d\n", i);
        break;
      case 1:
        printf("Fizz\n");
        break;
      case 2:
        printf("Buzz\n");
        break;
      case 3:
        printf("FizzBuzz\n");
        break;
    }
  }
}

int main() {
  int n = 100;
  fizzBuzzOptimized(n);
  return 0;
}
