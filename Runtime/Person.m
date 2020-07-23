//
//  Person.m
//  Runtime
//
//  Created by cinderella on 2020/7/17.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>
#import "Cat.h"

//@interface Person() {
//    union {
//        char bits;
//        struct {
//            char high : 1;
//            char weight : 1;
//            char appearance : 1;
//        };
//    } _personLook;
//}
//
//@end
//
@implementation Person
//
//- (void)setHigh: (BOOL)tall {
//    _personLook.high = tall;
//}
//
//- (void)setWeight: (BOOL)weight {
//
//}
//
//- (void)setAppearance: (BOOL)appearance {
//
//}
//
//- (BOOL)high {
//    NSLog(@"%d", _personLook.high);
//    return _personLook.high;
//}
//
//- (BOOL)weight {
//    return 1;
//}
//
//- (BOOL)appearance {
//    return 1;
//}
//
//- (void)other {
//    NSLog(@"%s", __func__);
//}
//
//+ (BOOL)resolveInstanceMethod:(SEL)sel {
//
//    Method method = class_getInstanceMethod(self, @selector(other));
//
//    if (sel == @selector(test)) {
////        class_addMethod(self, sel, method_getImplementation(method), method_getTypeEncoding(method));
//    }
//    return YES;
//}
//
//+ (id)forwardingTargetForSelector:(SEL)aSelector {
//    if (aSelector == @selector(test:)) {
////        objc_msgSend([[Cat alloc] init], aSelector);
////        return [[Cat alloc] init];
//        return [[Cat alloc] init];
//    }
//    return [super forwardingTargetForSelector:aSelector];
//}
//
//- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
//    if (aSelector == @selector(test:)) {
//        //如果这里是nil，就报错
//        return [NSMethodSignature signatureWithObjCTypes:"i20@0:8i16"];
//    }
//    return [super methodSignatureForSelector:aSelector];
//}
//
//- (void)forwardInvocation:(NSInvocation *)anInvocation {
//
////    int age;
////    //参数顺序：receiver，selector，other arguments
////    [anInvocation getArgument:&age atIndex:2];
////    NSLog(@"%d", age + 10);
//
////    anInvocation.target == person对象
////    anInvocation.selector == test:
////    anInvocation的参数：receiver, selector, 15
//    [anInvocation invokeWithTarget:[[Cat alloc] init]];
//
//    int ret;
//    [anInvocation getReturnValue:&ret];
//    NSLog(@"%d", ret);
//
////    [anInvocation invokeWithTarget:[[Cat alloc] init]];
////    NSLog(@"123");
////    (什么都不做)
//
//}

//+ (BOOL)isKindOfClass:(Class)cls {
//    for(Class tcls = object_getClass((id)self); tcls; tcls = tcls.superclass) {
//        NSLog(@"%@ %@", tcls, cls);
//        if (tcls == cls)
//            return YES;
//    }
//    return NO;
//}



@end
