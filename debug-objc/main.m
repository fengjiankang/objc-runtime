//
//  main.m
//  debug-objc
//
//  Created by suchavision on 1/24/17.
//
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

//#   define ISA_MASK        0x0000000ffffffff8ULL
//#   define ISA_MAGIC_MASK  0x000003f000000001ULL
//#   define ISA_MAGIC_VALUE 0x000001a000000001ULL

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
//        0x00007fff9fb52578
//        0x00007fff9fb52578
        NSString *str = @"test";
        NSString *className = [NSString stringWithUTF8String:object_getClassName(str)];
        NSLog(@"className is %@", className);
        __weak NSString *weakStr = str;
        NSLog(@"str is %@, %@", str, weakStr);
        
        NSLog(@"class is  %@, %@", str, [[str class] class]);
//        NSObject *obje
        NSObject *objc = [[NSObject alloc]init];
        NSLog(@"objc is %@", objc);
        NSNumber *num = @(5);
        NSLog(@"num is %@", num);
        
    }
    return 0;
}
