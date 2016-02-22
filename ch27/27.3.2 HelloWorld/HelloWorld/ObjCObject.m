//
//  ObjCObject.m
//  HelloWorld
//
//  Created by Mary on 15/9/6.
//  Copyright © 2015年 tonyguan. All rights reserved.
//

#import "ObjCObject.h"

@implementation ObjCObject

-(instancetype)initWithGreeting:(NSString*)aGreeting name:(NSString*)aName {
    self = [super init];
    if (self) {
        self.greeting = aGreeting;
        self.name = aName;
    }
    return self;
}

-(NSString*)sayHello:(NSString*)greeting name: (NSString*)name {
    NSString *string = [NSString stringWithFormat:@"Hi,%@ %@.", name, greeting];
    return string;
}


-(NSString *)write:(NSString *)fileName error:(NSError *__autoreleasing *)error {
    if (error) {
        *error = [NSError errorWithDomain:@"ObjCObject Error" code:0 userInfo:nil];
    }
    return nil;
}

@end
