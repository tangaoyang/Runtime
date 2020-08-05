//
//  Cat.m
//  Runtime
//
//  Created by cinderella on 2020/7/21.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "Cat.h"

@implementation Cat

+ (void)test {
    NSLog(@"%s", __func__);
}

+ (int)test:(int)age {
//    NSLog(@"%d", age * 2);
    return age * 2;
}

- (int)test:(int)age {
//        NSLog(@"%d", age * 2);
    NSLog(@"%s", __func__);
    return age * 2;
}

- (void)doSomething {
    NSLog(@"%s", __func__);
}

@end
