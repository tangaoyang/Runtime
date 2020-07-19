//
//  Person.m
//  Runtime
//
//  Created by cinderella on 2020/7/17.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import "Person.h"

@interface Person() {
    union {
        char bits;
        struct {
            char high : 1;
            char weight : 1;
            char appearance : 1;
        };
    } _personLook;
}

@end

@implementation Person

- (void)setHigh: (BOOL)tall {
    _personLook.high = tall;
}

- (void)setWeight: (BOOL)weight {
    
}

- (void)setAppearance: (BOOL)appearance {
    
}

- (BOOL)high {
    NSLog(@"%d", _personLook.high);
    return _personLook.high;
}

- (BOOL)weight {
    return 1;
}

- (BOOL)appearance {
    return 1;
}


@end
