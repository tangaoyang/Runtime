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

@implementation Person

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

- (void)other {
    NSLog(@"%s", __func__);
}

+ (BOOL)resolveInstanceMethod:(SEL)sel {

    Method method = class_getInstanceMethod(self, @selector(other));

    if (sel == @selector(test)) {
//        class_addMethod(self, sel, method_getImplementation(method), method_getTypeEncoding(method));
    }
    return YES;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    if (aSelector == @selector(test)) {
//        objc_msgSend([[Cat alloc] init], aSelector);
        return [[Cat alloc] init];
    }
    return [super forwardingTargetForSelector:aSelector];
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    if (aSelector == @selector(test)) {
        return [NSMethodSignature signatureWithObjCTypes:"v16@0:8"];
    }
    return [super methodSignatureForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    [anInvocation invokeWithTarget:[[Cat alloc] init] ];
}

@end
