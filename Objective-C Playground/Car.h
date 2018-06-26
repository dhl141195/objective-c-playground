// Car.h
#import <Foundation/Foundation.h>

static NSString *_defaultModel;

@interface Car : NSObject

@property (copy) NSString *model;

+ (void)setDefaultModel:(NSString *)aModel;
- (id)initWithModel:(NSString *)aModel;
- (void)drive;

@end
