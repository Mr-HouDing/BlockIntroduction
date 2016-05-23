//
//  ViewController.m
//  BlockIntroduction
//
//  Created by 侯仁杰 on 16/5/23.
//  Copyright © 2016年 侯仁杰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, copy) void (^blockProperty)(void);

@property (nonatomic, copy) void (^blockPropertyWithInput) (int);

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.\
    
    // 调用
    int i = printBlock(100);
    NSLog(@"printBlock:%d", i);
    
    // 把block声明为属性
    // blockProperty
    self.blockProperty = ^{
        NSLog(@"blockProperty is called!");
    };
    
    self.blockProperty();
    
    //blockPropertyWithInput
    self.blockPropertyWithInput = ^(int i){
        NSLog(@"blockPropertyWithInput is Called! I Value is %d", i);
    };
    
    self.blockPropertyWithInput(666);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Block定义
int (^printBlock)(int) = ^(int inputNum){
    NSLog(@"printBlock Called!");
    return inputNum;
};

@end
