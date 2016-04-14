//
//  CalcLogic.m
//  BusinessLogic
//
//  Created by tonyguanpro on 15/9/15.
//  Copyright © 2015年 tonyguan. All rights reserved.
//

#import "CalcLogic.h"

@implementation CalcLogic

//构造方法
- (id)init {
    self = [super init];
    if (self) {
        lastRetainValue = 0.0;
        isMainLabelTextTemporary = FALSE;
        opr = Default;
    }
    return self;
}


- (NSString *)updateMainLabelString:(NSString *)aString buttonTag:(NSInteger)tag {
    NSString *string = aString;
    
    if (isMainLabelTextTemporary) {
        string = @"0";
        isMainLabelTextTemporary = FALSE;
    }
    
    NSInteger optNumber = tag - 100;
    //把String转为double
    double mainLabelDouble = string.doubleValue;
    
    if (mainLabelDouble == 0
        && ![self isStringContainDecimal:string]) {
        NSString *strOptNumber = [NSString stringWithFormat:@"%li", (long)optNumber];
        return strOptNumber;
    }
    
    NSString *resultString = [string stringByAppendingFormat:@"%li", (long)optNumber];
    
    return resultString;
    
}

- (BOOL)isStringContainDecimal:(NSString *)string {
    NSString *searchForDecimal = @".";
    NSRange range = [string rangeOfString:searchForDecimal];
    
    if (range.location != NSNotFound)
        return YES;
    return NO;
}


- (NSString *)calculate:(NSString *)aString buttonTag:(NSInteger)tag {
    //把String转为为double
    double currentValue = aString.doubleValue;
    
    switch (opr) {
        case Plus:
            lastRetainValue += currentValue;
            break;
        case Minus:
            lastRetainValue -= currentValue;
            break;
        case Multiply:
            lastRetainValue *= currentValue;
            break;
        case Divide:
            if (currentValue != 0) {
                lastRetainValue /= currentValue;
            } else {
                opr = Default;
                isMainLabelTextTemporary = TRUE;
                return @"错误";
            }
            break;
        default:
            lastRetainValue = currentValue;
    }
    
    //记录当前操作符，下次计算时候使用
    opr = tag;
    NSString *resultString = [NSString stringWithFormat:@"%g", lastRetainValue];
    isMainLabelTextTemporary = TRUE;
    
    return resultString;
    
}


- (void)clear {
    lastRetainValue = 0.0;
    isMainLabelTextTemporary = FALSE;
    opr = Default;
}

@end