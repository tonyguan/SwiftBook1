//
//  ViewController.m
//  ObjCApp
//
//  Created by Mary on 15/9/8.
//  Copyright © 2015年 tonyguan. All rights reserved.
//

#import "ViewController.h"

#import "ObjCObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ObjCObject* obj = [[ObjCObject alloc] init];
    NSString* message = [obj callFrameworkMethod];
    
    NSLog(@"%@", message);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
