//
//  main.m
//  Runtime
//
//  Created by cinderella on 2020/7/17.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *person = [[Person alloc] init];
        person.high = YES;
        person.weight = YES;
        person.appearance = YES;
        NSLog(@"%d", person.high);
        NSLog(@"%p", person);
        [Person test:5];
        
//        NSLog(@"%d", [[NSObject class] isKindOfClass:[NSObject class]]); // 1
//        NSLog(@"%d", [[NSObject class]  isMemberOfClass:[NSObject class]]);  // 0  ?
//        NSLog(@"%d", [[Person class]  isKindOfClass:[Person class]]);  // 0
//        NSLog(@"%d", [[Person class]  isMemberOfClass:object_getClass([Person class])]); // 0
        
//        NSString *str = @"123"; //
//        int a = 0; //
//        NSLog(@"%p ", str);
        
    }
    return 0;
}
