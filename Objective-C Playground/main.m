#import <Foundation/Foundation.h>

typedef int (^ActionBlock)(int, int);

int sum(int num1, int num2, ActionBlock actionBlock) {
  return actionBlock(num1, num2);
}

int main() {
  int result = sum(1, 3, ^(int num1, int num2) {
    return num1 + num2;
  });
  NSLog(@"%d", result);
  return 0;
}
