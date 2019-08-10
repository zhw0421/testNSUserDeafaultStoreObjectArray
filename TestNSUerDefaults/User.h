//
//  User.h
//  TestNSUerDefaults
//
//  Created by Zhang,Hongwei(RM) on 2019/8/10.
//  Copyright © 2019 Zhang,Hongwei(RM). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Others.h"
NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject<NSCoding>
@property(nonatomic,strong) NSString *name;
@property(nonatomic,strong) NSString *brithday;
@property(nonatomic,strong) Others *opp;
@end

NS_ASSUME_NONNULL_END
