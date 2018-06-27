#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
  __block int i = 0;

  void (^testClosure)(void) = ^{
    NSLog(@"%d", i);
    i = 2;
  };

  i = 1;
  testClosure(); // print 1

  NSLog(@"%d", i); // print 2
  return 0;
}
