//
//  User+Others.h
//  TestNSUerDefaults
//
//  Created by Zhang,Hongwei(RM) on 2019/8/10.
//  Copyright © 2019 Zhang,Hongwei(RM). All rights reserved.
//

#import "User.h"
#import "Others.h"
NS_ASSUME_NONNULL_BEGIN

@interface User (Others)

@property (strong,nonatomic) Others *other;

@end

NS_ASSUME_NONNULL_END
