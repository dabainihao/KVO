//
//  NSObject+Men.m
//  响应式编程
//
//  Created by 杨少锋 on 16/3/12.
//  Copyright © 2016年 杨少锋. All rights reserved.
//

#import "NSObject+Men.h"
#import "MenPerosn.h"
#import <objc/runtime.h>

const void *key = "key";

@implementation NSObject (Men)

- (void)Men_addObserver:(id)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context; {
    // 修改isa指针的指向
    object_setClass(self , [MenPerosn class]);
    // 给MenPerosn 绑定观察者
    objc_setAssociatedObject(self, key, observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
