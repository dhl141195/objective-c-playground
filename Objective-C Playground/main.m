#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
  int i = 0;
  int *ptr = &i;

  void (^testClosure)(void) = ^{
    NSLog(@"%d", *ptr);
    *ptr = 2;
  };

  i = 1;
  testClosure(); // print 1

  NSLog(@"%d", i); // print 2
  return 0;
}
