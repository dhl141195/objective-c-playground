#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char *argv[]) {
  // Instantiating objects
  Car *nissan = [[Car alloc] init];
  NSLog(@"Created a %@", [nissan model]);

  Car *chevy = [[Car alloc] initWithModel:@"Chevy Corvette"];
  NSLog(@"Created a %@, too.", chevy.model);

  return 0;
}
