//
//  NSObject+Men.h
//  响应式编程
//
//  Created by 杨少锋 on 16/3/12.
//  Copyright © 2016年 杨少锋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Men)


- (void)Men_addObserver:(id)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context;




@end
