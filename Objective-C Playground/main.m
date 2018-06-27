#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
  int i = 0;

  void (^testClosure)(void) = ^{
    NSLog(@"%d", i);
  };

  i = 1;
  testClosure(); // print 0

  return 0;
}
