//
//  CalcLogic.h
//  Calculator
//
//  Created by tonyguanpro on 15/9/15.
//  Copyright © 2015年 tonyguan. All rights reserved.
//


#import <Foundation/Foundation.h>

typedef enum {
    Plus = 200, Minus, Multiply, Divide,
    Default = 0
} Operator;

@interface CalcLogic : NSObject {
    //保存上一次值
    double lastRetainValue;
    //最近一次选择的操作符（加、减、乘、除）
    Operator opr;
    //临时保存MainLabel内容，为true时候，输入数字MainLabel内容被清为0
    BOOL isMainLabelTextTemporary;
}

//构造方法
- (id)init;

- (NSString *)updateMainLabelString:(NSString *)aString buttonTag:(NSInteger)tag ;

- (BOOL)isStringContainDecimal:(NSString *)string;

- (NSString *)calculate:(NSString *)aString buttonTag:(NSInteger)tag;

- (void)clear;

@end
