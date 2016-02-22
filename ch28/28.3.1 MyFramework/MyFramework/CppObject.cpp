//
//  CppObject.cpp
//  HelloSwiftCallCPP
//
//  Created by Mary on 15/9/10.
//  Copyright © 2015年 tonyguan. All rights reserved.
//

#include "CppObject.h"

int CppObject::add(int a, int b){
    return a+b;
}

int CppObject::sub(int a, int b){
    return a-b;
}

int CppObject::static_add(int a, int b){
    return a+b;
}

int CppObject::static_sub(int a, int b){
    return a-b;
}