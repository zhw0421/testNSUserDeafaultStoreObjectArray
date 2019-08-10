//
//  Others.m
//  TestNSUerDefaults
//
//  Created by Zhang,Hongwei(RM) on 2019/8/10.
//  Copyright © 2019 Zhang,Hongwei(RM). All rights reserved.
//

#import "Others.h"

@implementation Others
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super init]) {
        self.pwd = [aDecoder decodeObjectForKey:@"pwd"];
        
    }
    return self;
}
- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.pwd forKey:@"pwd"];
}

@end
