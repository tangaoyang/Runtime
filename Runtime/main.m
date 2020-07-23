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

void run() {
    NSLog(@"-----run");
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Person *person = [[Person alloc] init];
//        NSLog(@"%@ %@", [Person class], object_getClass(object_getClass([Person class])));
        
//        Class newClass = objc_allocateClassPair([NSObject class], "Dog", 0);
//        class_addIvar(newClass, "_age", 4, 1, @encode(int));
//        objc_registerClassPair(newClass);
//        class_getInstanceSize(newClass);
//        id dog = [[newClass alloc] init];
//        Ivar nameIvar = class_getInstanceVariable([Person class], "_name");
//        NSLog(@"%s %s", ivar_getName(nameIvar), ivar_getTypeEncoding(nameIvar));
        
        Person *person = [[Person alloc] init];
//        class_replaceMethod([Person class], @selector(print), (IMP)run, "v");
        Method runMethod = class_getInstanceMethod([Person class], @selector(run));
        Method printMethod = class_getInstanceMethod([Person class], @selector(print));
        method_exchangeImplementations(runMethod, printMethod);
        [person print];
        
//        person.high = YES;
//        person.weight = YES;
//        person.appearance = YES;
//        NSLog(@"%d", person.high);
//        NSLog(@"%p", person);
//        [Person test:5];
        
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
