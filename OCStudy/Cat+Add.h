//
//  Cat+Add.h
//  OCStudy
//
//  Created by xiekunpeng on 2019/4/9.
//  Copyright © 2019 xboker. All rights reserved.
//

#import "Cat.h"

NS_ASSUME_NONNULL_BEGIN

@interface Cat (Add)   
///如果能知道私有方法名字和参数通过这种方式可以调用;
- (void)privateEat:(NSString *)thing;

- (void)publicTest;




/**
 单纯声明属性不行, 因为系统不会自动生成setter和getter, 通过对象关联方式可以实现;
 通过class_addIvar()可以添加成员变量;
        This function may only be called after objc_allocateClassPair and before objc_registerClassPair. Adding an instance variable to an existing class is not supported.
 
 翻译: 只能在构建类的过程中调用, 一旦完成了定义, 就不能再添加成员变量了;
 经过编译的类启动后没有机会调用class_addIvar;程序在运行时动态构建的类需要在调用objc_registerClassPair之后才可以被使用，同样没有机会再添加成员变量。
 */
@property (nonatomic, copy) NSString *name;

@end

NS_ASSUME_NONNULL_END
