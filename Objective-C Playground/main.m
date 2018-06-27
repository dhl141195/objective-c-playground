#import <Foundation/Foundation.h>
#import "Car.h"

int main() {
  Car *c = [[Car alloc]init];
  [c startEngine];
  // [c engineIsWorking] Error: engineIsWorking is private method
  return 0;
}
