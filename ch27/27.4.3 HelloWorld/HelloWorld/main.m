//
//  main.m
//  HelloWorld
//
//  Created by Mary on 15/9/7.
//  Copyright © 2015年 tonyguan. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "HelloWorld-Swift.h"

int main(int argc, const char * argv[]) {
    
    SwiftObject *sobj = [[SwiftObject alloc] initWithGreeting:@"Good morning" name:@"Tom"];
    
    NSLog(@"%@", sobj.description);
    
    NSString* hello = [sobj sayHello:@"Good morning" name:@"Tony"];
    NSLog(@"%@",hello);
    
    return 0;
}
