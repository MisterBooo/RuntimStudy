//
//  AuditingInvoker.m
//  RuntimStudy
//
//  Created by MisterBooo on 2017/12/19.
//  Copyright © 2017年 MisterBooo. All rights reserved.
//

#import "AuditingInvoker.h"

@implementation AuditingInvoker
- (void)preInvoke:(NSInvocation *)inv withTarget:(id)target{
    
    NSLog(@"before sending message with selector %@ to %@ object", NSStringFromSelector([inv selector]),NSStringFromClass([target class]));
}
- (void)postInvoke:(NSInvocation *)inv withTarget:(id)target{
    NSLog(@"after sending message with selector %@ to %@ object", NSStringFromSelector([inv selector]),NSStringFromClass([target class]));
    
}

@end
