//
//  Person.h
//  Runtime
//
//  Created by cinderella on 2020/7/17.
//  Copyright © 2020 cinderella. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

+ (void)test:(int)age;
//- (void)setHigh: (BOOL)tall;
//- (void)setWeight: (BOOL)weight;
//- (void)setAppearance: (BOOL)appearance;
//- (BOOL)high;
//- (BOOL)weight;
//- (BOOL)appearance;

@property (nonatomic, strong) NSString *name;
- (void)print;

@end

NS_ASSUME_NONNULL_END
