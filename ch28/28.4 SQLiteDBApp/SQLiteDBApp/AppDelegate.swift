//
//  AppDelegate.swift
//  SQLiteDBApp
//
//  Created by 关东升 on 15/9/11.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var viewController: ViewController?
    var navController: UINavigationController?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        self.viewController = ViewController(style:.Plain)
        self.navController = UINavigationController(rootViewController: self.viewController!)

        self.window?.rootViewController = self.navController
        self.window?.makeKeyAndVisible()
        
        return true
    }

}

