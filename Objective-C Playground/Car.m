#import "Car.h"

@interface Car ()
- (BOOL)engineIsWorking;
@property(readwrite) double odometer;
@end

@implementation Car

-(BOOL)engineIsWorking{
  return true;
}
- (void)startEngine {

    // this line work because we re-declared odometer as readwrite property
    self.odometer = 2.2;
    // otherwise we have to
    // _odometer = 2.2;
    
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
