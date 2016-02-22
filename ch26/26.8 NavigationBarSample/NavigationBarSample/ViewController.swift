//
//  ViewController.swift
//  NavigationBarSample
//
//  Created by 关东升 on 15/9/14.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        let screen = UIScreen.mainScreen().bounds
        
        let labelWidth:CGFloat = 90
        let labelHeight:CGFloat = 20
        let labelTopView:CGFloat = 150
        label = UILabel(frame: CGRectMake((screen.size.width - labelWidth)/2 , labelTopView, labelWidth, labelHeight))
        
        label.textAlignment = NSTextAlignment.Center
        label.text = "Label"
        self.view.addSubview(label)
        
        let navigationBarHeight:CGFloat = 44
        let statusBarHeight:CGFloat = 20
        let navigationBar = UINavigationBar(frame: CGRectMake(0 , statusBarHeight, screen.size.width, navigationBarHeight))
        
        let saveButtonItem = UIBarButtonItem(barButtonSystemItem: .Save, target: self, action: "save:")
        let addButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "add:")
        
        let titleItem = UINavigationItem(title: "Home")
        titleItem.leftBarButtonItem = saveButtonItem
        titleItem.rightBarButtonItem = addButtonItem
        
        navigationBar.items = [titleItem]
        
        self.view.addSubview(navigationBar)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func save(sender: AnyObject) {
        label.text = "点击Save"
    }
    
    func add(sender: AnyObject) {
        self.label.text = "单击Add"
    }
}
