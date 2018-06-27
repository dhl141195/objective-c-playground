#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
  // Declare the block variable
  double (^distanceFromRateAndTime)(double rate, double time);
  
  // Create and assign the block
  distanceFromRateAndTime = ^double(double rate, double time) {
    return rate * time;
  };
  // Call the block
  double dx = distanceFromRateAndTime(35, 1.5);
  
  NSLog(@"A car driving 35 mph will travel %.2f miles in 1.5 hours.",dx);
  return 0;
}
