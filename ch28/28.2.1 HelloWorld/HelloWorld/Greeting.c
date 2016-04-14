//
//  Greeting.c
//  HelloWorld
//
//  Created by Mary on 15/9/10.
//  Copyright © 2015年 tonyguan. All rights reserved.
//

#include "Greeting.h"

const char* sayHello(const char* greeting, const char* name) {
    
    //多个4个字节，为Hi, 字符准备
    char *result = malloc(strlen(greeting) + strlen(name) + 4);
    strcpy(result, "Hi,");
    strcat(result, name);
    strcat(result, " ");
    strcat(result, greeting);
    
    return result;
}
