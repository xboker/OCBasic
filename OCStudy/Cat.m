//
//  Cat.m
//  OCStudy
//
//  Created by xiekunpeng on 2019/4/9.
//  Copyright © 2019 xboker. All rights reserved.
//

#import "Cat.h"

@interface Cat () {
    @public//不能调用
    NSString *job;
}
 
@end

@implementation Cat


///私有方法, 在ViewController中不能直接调用;
- (void)privateEat:(NSString *)somthing {
    NSLog(@"\n私有方法,Cat类外部没有接口,但是通过Category方式可以调用到;  \nCat 在偷吃%@", somthing);
}


@end
