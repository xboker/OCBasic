//
//  RootViewController.m
//  OCStudy
//
//  Created by xiekunpeng on 2019/4/9.
//  Copyright © 2019 xboker. All rights reserved.
//

#import "RootViewController.h"

#import "Cat.h"
#import "Cat+Add.h"
#import "NSObject+Add.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ///分类
    Cat *cat = [[Cat alloc] init];
    [cat privateEat:@"Fish"];
    if ([cat respondsToSelector:@selector(informalityDelegate)]) {
        [cat informalityDelegate];
    }
    ///属性可以直接使用和操作, 本质上是调用的setter和getter方法
    cat.kind    = @"折耳";
    ///手动改为@public, 外部可以调用
    cat->age    = 3;
    cat.name = @"哈哈";
    [cat publicTest];
    ///由于是@protected, 所以外边不能调用
    // cat->color  = @"棕色";
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
