#import <Foundation/Foundation.h>
#import "Car.h"
#import "Car+Maintenance.h"

int main() {
  Car *c = [[Car alloc] init];
  c.model = @"Dream";
  [c drive];
  [c changeOil];
  return 0;
}
