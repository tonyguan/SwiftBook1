//
//  WrapperObjCObject.h
//  HelloSwiftCallCPP
//
//  Created by Mary on 15/9/10.
//  Copyright © 2015年 tonyguan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WrapperObjCObject : NSObject

-(int)add:(int)a :(int)b;
-(int)sub:(int)a :(int)b;
+(int)static_add:(int)a :(int)b;
+(int)static_sub:(int)a :(int)b;


@end
