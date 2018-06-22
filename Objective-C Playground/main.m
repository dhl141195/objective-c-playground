#import <Foundation/Foundation.h>

typedef void(^CallbackBlock)(void);

@interface SampleClass:NSObject
- (void) doSomething:(CallbackBlock) cb;
@end

@implementation SampleClass
- (void) doSomething:(CallbackBlock)cb {
  NSLog(@"Do something");
  cb();
}
@end

int main() {
  SampleClass *sc = [[SampleClass alloc] init];
  [sc doSomething:^{
    NSLog(@"Done something");
  }];
  return 0;
}
