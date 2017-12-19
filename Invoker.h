//
//  Invoker.h
//  RuntimStudy
//
//  Created by MisterBooo on 2017/12/19.
//  Copyright © 2017年 MisterBooo. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Invoker <NSObject>
@required
// 在调用对象中的方法前执行对功能的横切
- (void)preInvoke:(NSInvocation *)inv withTarget:(id)target;
@optional
// 在调用对象中的方法后执行对功能的横切
- (void)postInvoke:(NSInvocation *)inv withTarget:(id)target;

@end
