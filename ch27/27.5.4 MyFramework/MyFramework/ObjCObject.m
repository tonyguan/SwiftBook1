//
//  ObjCObject.m
//  MyFramework
//
//  Created by Mary on 15/9/8.
//  Copyright © 2015年 tonyguan. All rights reserved.
//

#import "ObjCObject.h"
#import <MyFramework/MyFramework-Swift.h>

@implementation ObjCObject

-(NSString*)callFrameworkMethod {
    
    SwiftObject *sobj = [[SwiftObject alloc] initWithGreeting:@"Good morning" name:@"Tom"];
    
    NSLog(@"%@", sobj.description);
    
    NSString* hello = [sobj sayHello:@"Good morning" name:@"Tony"];
    NSLog(@"%@",hello);
    
    return hello;
}

@end
