//
//  Greeting.cpp
//  HelloWorld
//
//  Created by Mary on 15/9/10.
//  Copyright © 2015年 tonyguan. All rights reserved.
//

#include "Greeting.h"
#include <iostream>
using namespace std;

const char* sayHello(const char* greeting, const char* name) {
    
    string strGreeting(greeting);
    string strName(name);
    string str = "Hi," + strName + " " + strGreeting;
    
    char* result = strcpy((char*)malloc(str.length()+1), str.c_str());
    
    return result;
    
}
