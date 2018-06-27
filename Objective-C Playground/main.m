#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
  NSString* (^saySomething)(void);
  
  saySomething = ^{
    return @"Im a block";
  };

  NSLog(@"%@", saySomething());

  return 0;
}
