#import <Foundation/Foundation.h>

@interface Car : NSObject

// declare public property
@property (copy) NSString *model;

- (void)drive;

@end

@implementation Car {
  double _odometer;
}

// generate getter/setter for public property model and define _model as private ivar
// latest XCode version can omit this
@synthesize model = _model;

- (void)drive {
  // now inside implementation model can be accessed through private ivar or public property
  // _model = @"Test";
  // self.model = @"Test";
  NSLog(@"Driving a %@. Vrooooom!", self.model);
}

@end

int main(int argc, const char *argv[]) {
  Car *c = [[Car alloc]init];
  
  // this is convenient syntax for [c setModel:@"Dream"]
  c.model = @"Dream";
  
  [c drive];
  return 0;
}
