//
//  ObjCObject.h
//  HelloWorld
//
//  Created by Mary on 15/9/6.
//  Copyright © 2015年 tonyguan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObjCObject : NSObject

@property(strong, nonatomic, nonnull) NSString* greeting;
@property(strong, nonatomic, nonnull) NSString* name;

-(nonnull instancetype)initWithGreeting:(nonnull NSString*)aGreeting name:(nonnull NSString*)aName;

@end
