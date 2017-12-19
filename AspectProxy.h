//
//  AspectProxy.h
//  RuntimStudy
//
//  Created by MisterBooo on 2017/12/19.
//  Copyright © 2017年 MisterBooo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Invoker.h"
@interface AspectProxy : NSProxy

//** 通过NSProxy实例转发消息的真正对象 */
@property(nonatomic, strong) id proxyTarget;

//** 能够实现横切功能的嘞（遵守Invoker协议）的实例 */
@property(nonatomic, strong) id <Invoker> invoker;

/** 定义了哪些消息会调用横切功能 */
@property(readonly) NSMutableArray *selectors;


// AspectProxy类实例的初始化方法
- (id)initWithObject:(id)object andInvoker:(id<Invoker>)invoker;
- (id)initWithObject:(id)object selectors:(NSArray *)selectors andInvoker:(id<Invoker>)invoker;
// 向当前的选择器列表中添加选择器


// 向当前的选择器列表中添加选择器
- (void)registerSelector:(SEL)selector;
@end
