//
//  MenPerosn.m
//  响应式编程
//
//  Created by 杨少锋 on 16/3/12.
//  Copyright © 2016年 杨少锋. All rights reserved.
//

#import "MenPerosn.h"
#import <objc/runtime.h>

@implementation MenPerosn

- (void)setAge:(NSInteger)age {
    [super setAge:age];
    // 获取到观察者
   id observer = objc_getAssociatedObject(self, "key");
    
    [observer observeValueForKeyPath:@"age" ofObject:observer change:@{@"new":[NSNumber numberWithInteger:age]} context:nil];
}


@end
