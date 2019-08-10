//
//  User.m
//  TestNSUerDefaults
//
//  Created by Zhang,Hongwei(RM) on 2019/8/10.
//  Copyright © 2019 Zhang,Hongwei(RM). All rights reserved.
//

#import "User.h"

@implementation User
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super init]) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.brithday = [aDecoder decodeObjectForKey:@"brithday"];
        self.opp = [aDecoder decodeObjectForKey:@"opp"];

    }
    return self;
}
- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.name forKey:@"name"];
    [coder encodeObject:self.brithday forKey:@"brithday"];
    [coder encodeObject:self.opp forKey:@"opp"];


}
@end
