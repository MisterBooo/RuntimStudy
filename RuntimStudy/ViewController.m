//
//  ViewController.m
//  RuntimStudy
//
//  Created by MisterBooo on 2017/12/19.
//  Copyright © 2017年 MisterBooo. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Sark.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //在调用[NSObject foo]的时候，会先在NSObject的meta-class中去查找foo方法的IMP，未找到，继续在superClass中去查找，NSObject的meta-class的superClass就是本身NSObject，于是又回到NSObject的类方法中查找foo方法，于是乎找到了，执行foo方法，输出
    //2017-12-19 11:05:15.035934+0800 RuntimStudy[10542:217912] IMP: -[NSObject(Sark) foo]
    [NSObject foo];
    
    //在调用[[NSObject new] foo]的时候，会先生成一个NSObject的对象，用这个NSObject实例对象再去调用foo方法的时候，会去NSObject的实例方法里面去查找，找到，于是也会输出
    // 2017-12-19 11:05:15.036742+0800 RuntimStudy[10542:217912] IMP: -[NSObject(Sark) foo]
    [[NSObject new] foo];
}


@end
