//
//  Student.m
//  RuntimStudy
//
//  Created by MisterBooo on 2017/12/19.
//  Copyright © 2017年 MisterBooo. All rights reserved.
//

#import "Student.h"
#import <objc/runtime.h>
@implementation Student
-(void)study:(NSString *)subject :(NSString *)bookName{
    NSLog(@"Invorking method on %@ object with selector %@",[self class],NSStringFromSelector(_cmd));
}

-(void)study:(NSString *)subject andRead:(NSString *)bookName{
    NSLog(@"Invorking method on %@ object with selector %@",[self class],NSStringFromSelector(_cmd));
}

@end
