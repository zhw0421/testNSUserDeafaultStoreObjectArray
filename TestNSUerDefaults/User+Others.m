//
//  User+Others.m
//  TestNSUerDefaults
//
//  Created by Zhang,Hongwei(RM) on 2019/8/10.
//  Copyright © 2019 Zhang,Hongwei(RM). All rights reserved.
//

#import "User+Others.h"
#import <objc/runtime.h>

static NSString *OtherKey = @"OtherKey"; //那么的key

@implementation User (Others)
/**
 setter方法
 */
- (void)setOther:(Others *)other {
    objc_setAssociatedObject(self, &OtherKey, other, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

/**
 getter方法
 */
- (Others *)other {
    return objc_getAssociatedObject(self, &OtherKey);
}

@end
