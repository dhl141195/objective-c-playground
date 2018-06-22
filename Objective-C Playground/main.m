#import <Foundation/Foundation.h>

int (^sum)(int, int) = ^(int num1, int num2) {
  return num1 + num2;
};

int main() {
  NSLog(@"The result is %d", sum(1, 2));
  return 0;
}
