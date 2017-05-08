//
//  MyAssertionHandler.m
//  AssertTest
//
//  Created by Apple on 16/6/2.
//  Copyright © 2016年 zf. All rights reserved.
//

#import "MyAssertionHandler.h"

@implementation MyAssertionHandler

//处理Objective-C的断言
- (void)handleFailureInMethod:(SEL)selector object:(id)object file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format,...
{
    NSLog(@"\n\n   NSAssert Failure: Method: %@ \n\n   object %@ \n\n   fileName  %@ \n\n   lineNumber  %li  \n\n   description:  %@  \n ", NSStringFromSelector(selector) , object, fileName, (long)line,format);
}
//处理C的断言
- (void)handleFailureInFunction:(NSString *)functionName file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format,...
{
    NSLog(@"NSCAssert Failure: Function (%@) in %@  %li", functionName, fileName, (long)line);
}

@end
