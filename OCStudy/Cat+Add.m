//
//  Cat+Add.m
//  OCStudy
//
//  Created by xiekunpeng on 2019/4/9.
//  Copyright © 2019 xboker. All rights reserved.
//

#import "Cat+Add.h"
#import <objc/runtime.h>

const void *NameKey = nil;

@implementation Cat (Add)

- (void)publicTest {
    NSLog(@"名字是: %@", self.name);

    
}











#pragma mark    对象关联实现
- (void)setName:(NSString *)name {
  /**
     objc_setAssociatedObject(<#id  _Nonnull object#>, <#const void * _Nonnull key#>, <#id  _Nullable value#>, <#objc_AssociationPolicy policy#>)
     把value通过key, 用policy这种策略关联给object;
   */
    objc_setAssociatedObject(self, NameKey, name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)name {
    /**
       objc_getAssociatedObject(<#id  _Nonnull object#>, <#const void * _Nonnull key#>)
       根据指定key从objectz中获取对应关联值;
     */
    return objc_getAssociatedObject(self, NameKey);
}



@end
