//
//  ViewController.swift
//  ToolbarSample
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
        
        
        let toolBarHeight:CGFloat = 44
        let toolBar = UIToolbar(frame: CGRectMake(0 , screen.size.height - toolBarHeight, screen.size.width, toolBarHeight))
        
        let saveButtonItem = UIBarButtonItem(barButtonSystemItem: .Save, target: self, action: "save:")
        let space = UIBarButtonItem(barButtonSystemItem: .FlexibleSpace, target: nil, action: nil)
        let openButtonItem = UIBarButtonItem(title: "Open", style: .Plain, target: self, action: "open:")
        
        toolBar.items = [saveButtonItem, space, openButtonItem]
        self.view.addSubview(toolBar)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func save(sender: AnyObject) {
        label.text = "点击Save"
    }
    
    func open(sender: AnyObject) {
        label.text = "点击Open"
    }


}

