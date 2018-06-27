#import "Car.h"

@interface Car ()
- (BOOL)engineIsWorking;
@end

@implementation Car

@synthesize model = _model;

-(BOOL)engineIsWorking{
  return true;
}
- (void)startEngine {
    if ([self engineIsWorking]) {
        NSLog(@"Starting the %@'s engine", _model);
    }
}
- (void)drive {
    NSLog(@"The %@ is now driving", _model);
}
- (void)turnLeft {
    NSLog(@"The %@ is turning left", _model);
}
- (void)turnRight {
    NSLog(@"The %@ is turning right", _model);
}

@end
