//
//  ViewController.m
//  TestNSUerDefaults
//
//  Created by Zhang,Hongwei(RM) on 2019/8/10.
//  Copyright © 2019 Zhang,Hongwei(RM). All rights reserved.
//

#import "ViewController.h"
#import "User.h"
#import "User+Others.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Others *o1 = [[Others alloc] init];
    o1.pwd = @"pwd1";
    Others *o2 = [[Others alloc] init];
    o2.pwd = @"pwd2";
    User *user = [[User alloc] init];
    user.name = @"zhw";
    user.brithday = @"1";
    user.other = o1;
    user.opp = o1;

    User *user1 = [[User alloc] init];
    user1.name = @"zhw12";
    user1.brithday = @"12";
    user1.other = o2;
    user1.opp = o2;

    NSMutableArray *dataArray = [NSMutableArray arrayWithCapacity:50];
    NSData *data1 = [NSKeyedArchiver archivedDataWithRootObject:user];
    NSData *data2 = [NSKeyedArchiver archivedDataWithRootObject:user1];
    [dataArray addObject:data1];
    [dataArray addObject:data2];
    NSArray * array = [NSArray arrayWithArray:dataArray];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:array forKey:@"allStudent"];
    NSLog(@"zhw allStudent store");
    NSArray *datasArr = [defaults objectForKey:@"allStudent"];
    NSMutableArray *usersArr = [NSMutableArray array];
    for (NSData *data in datasArr) {
        User *u = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        [usersArr addObject:u];
        NSLog(@"zhw u====%@",u.name);
        NSLog(@"zhw opp====%@",u.opp.pwd);
    }
    
    NSLog(@"zhw usersArr====%li",usersArr.count);
    
}


@end
