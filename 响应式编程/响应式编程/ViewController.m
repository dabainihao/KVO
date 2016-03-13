//
//  ViewController.m
//  响应式编程
//
//  Created by 杨少锋 on 16/3/12.
//  Copyright © 2016年 杨少锋. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NSObject+Men.h"

@interface ViewController ()
@property (nonatomic,strong) Person *p;
@end

@implementation ViewController

// kvo的内部实现
// 0.使用分类为NSObject扩展一个方法
// 1.修改ias指针指向这个类.
// 2.为派生类绑定一个观察对象
// 3.在派生类的setter方法中获取到观察者
// 4.观察者对象去执行observer方法



- (void)viewDidLoad {
    [super viewDidLoad];

    Person *person = [[Person alloc] init];
    person.age = 1;
    [person Men_addObserver:self forKeyPath:@"age" options:(NSKeyValueObservingOptionNew) context:nil];
    _p = person;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    NSLog(@"chang = %ld",[change[@"new"] integerValue]);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _p.age = 2;
}


@end
