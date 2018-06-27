#import <Foundation/Foundation.h>

@interface SampleClass:NSObject
- (void) doSomething:(void(^)(void)) cb;
@end

@implementation SampleClass
- (void)doSomething:(void (^)(void))cb {
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
