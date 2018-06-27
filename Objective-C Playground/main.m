#import <Foundation/Foundation.h>
#import "Car.h"

int main() {
  Car *c = [[Car alloc]init];
  c.model = @"Dream";
  [c startEngine];
  
  // c.odometer = 4.4; ERROR: odometer still readonly property
  NSLog(@"odometer: %f", c.odometer);

  return 0;
}
