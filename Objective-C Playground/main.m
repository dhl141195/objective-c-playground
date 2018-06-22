#import <Foundation/Foundation.h>

@interface NumberUtil:NSObject
- (int)sum:(int)num1 withNum:(int)num2;
@end

@implementation NumberUtil
- (int)sum:(int)num1 withNum:(int)num2 {
  return num1 + num2;
}
@end

int main() {
  NumberUtil *nu = [[NumberUtil alloc] init];
  NSLog(@"%d", [nu sum:1 withNum:2]);
  return 0;
}
