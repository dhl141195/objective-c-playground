#import "Car.h"

@implementation Car {
    // Private instance variables
    double _odometer;
}

@synthesize model = _model;

+ (void)initialize {
    if (self == [Car class]) {
        _defaultModel = @"Nissan Versa";
    }
}

+ (void)setDefaultModel:(NSString *)aModel {
    _defaultModel = [aModel copy];
}

- (id)initWithModel:(NSString *)aModel {
    self = [super init];
    if (self) {
        // Any custom setup work goes here
        _model = [aModel copy];
        _odometer = 0;
    }
    return self;
}

- (id)init {
    return [self initWithModel:_defaultModel];
}

- (void)drive {
    NSLog(@"Driving a %@. Vrooooom!", self.model);
}

@end
