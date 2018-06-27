#import <Foundation/Foundation.h>
#import "Car.h"
#import "Coupe.h"
#import "Car+Maintenance.h"

int main(int argc, const char *argv[]) {
  Car *ford = [[Car alloc] init];
  ford.model = @"Ford F-150";
  [ford startEngine];
  [ford drive]; // Calls the protected method
  [ford changeOil];

  Car *porsche = [[Coupe alloc] init];
  porsche.model = @"Porsche 911 Turbo";
  [porsche startEngine]; // Calls the protected method
  [porsche drive];

  // "Protected" methods have not been imported,
  // so this will *not* work
  // [porsche prepareToDrive];
  return 0;
}
