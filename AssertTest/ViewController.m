//
//  ViewController.m
//  AssertTest
//
//  Created by Apple on 16/6/2.
//  Copyright © 2016年 zf. All rights reserved.
//

#import "ViewController.h"
#import "MyAssertionHandler.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a ßelnib.
    
    [self printMyName:nil];
   // NSAssert
   
   // NSAssertionHandler
}

- (void)printMyName:(NSString *)myName
{
    NSParameterAssert(myName);
    //NSAssert(myName != nil, @"名字不能为空！");
    NSLog(@"My name is %@.",myName);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
