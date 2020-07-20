//
//  main.m
//  Runtime
//
//  Created by cinderella on 2020/7/17.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *person = [[Person alloc] init];
        person.high = YES;
        person.weight = YES;
        person.appearance = YES;
        NSLog(@"%d", person.high);
        NSLog(@"%p", person);
        
        
    }
    return 0;
}
