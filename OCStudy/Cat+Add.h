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

@end

NS_ASSUME_NONNULL_END
