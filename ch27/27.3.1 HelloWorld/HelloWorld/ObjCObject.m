//
//  ObjCObject.m
//  HelloWorld
//
//  Created by Mary on 15/9/6.
//  Copyright © 2015年 tonyguan. All rights reserved.
//

#import "ObjCObject.h"

@implementation ObjCObject

-(nonnull instancetype)initWithGreeting:(nonnull NSString*)aGreeting name:(nonnull NSString*)aName {
    self = [super init];
    if (self) {
        self.greeting = aGreeting;
        self.name = aName;
    }
    return self;
}

@end
