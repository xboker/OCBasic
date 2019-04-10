//
//  Cat.h
//  OCStudy
//
//  Created by xiekunpeng on 2019/4/9.
//  Copyright © 2019 xboker. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

@interface Cat : NSObject  {
    ///成员变量 默认@private
    NSString    *color;
    @public
    NSInteger   age;
    @package
    double      length;
    @private
    double      height;
}

///属性
@property (nonatomic, copy) NSString *kind;

@end
NS_ASSUME_NONNULL_END
