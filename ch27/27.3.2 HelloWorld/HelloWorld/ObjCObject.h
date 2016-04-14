//
//  ObjCObject.h
//  HelloWorld
//
//  Created by Mary on 15/9/6.
//  Copyright © 2015年 tonyguan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ObjCObject : NSObject

@property(strong, nonatomic) NSString* greeting;
@property(strong, nonatomic) NSString* name;

-(instancetype)initWithGreeting:(NSString*)aGreeting name:(NSString*)aName;

-(NSString*)sayHello:(NSString*)greeting name: (NSString*)name;

-(nullable NSString *)write:(NSString *)fileName error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END