//
//  ViewController.swift
//  ButtonLabelSample
//
//  Created by 关东升 on 15/9/2.
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
    
    var timer: NSTimer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        let screen = UIScreen.mainScreen().bounds;
        let labelWidth:CGFloat = 90
        let labelHeight:CGFloat = 20
        let labelTopView:CGFloat = 150
        let label = UILabel(frame: CGRectMake((screen.size.width - labelWidth)/2 , labelTopView, labelWidth, labelHeight))
        
        label.text = "Label"
        //字体左右剧中
        label.textAlignment = .Center
        self.view.addSubview(label)
        
        let button = UIButton(type: UIButtonType.System)
        button.setTitle("OK", forState: UIControlState.Normal)
        
        let buttonWidth:CGFloat = 60
        let buttonHeight:CGFloat = 20
        let buttonTopView:CGFloat = 240
        
        button.frame = CGRectMake((screen.size.width - buttonWidth)/2 , buttonTopView, buttonWidth, buttonHeight)
        
        button.addTarget(self, action: Selector("onClickWithExternal:forEvent:"), forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(button)
        
        let userInfo = [ "String" : "Hello", "Result" : 10 ]
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0,
            target: self,
            selector: Selector("timerFireMethod:"),
            userInfo: userInfo,
            repeats: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        timer?.invalidate()
        timer = nil
        
    }
    
    func timerFireMethod(timer: NSTimer) {
        if let userInfo : AnyObject = timer.userInfo {
            let value = userInfo["String"]
            let result = userInfo["Result"]
            print("\(value)")
            print("\(result)")
        }
        
        let redValue: CGFloat = CGFloat(arc4random() % 255) / 255.0
        let greenValue: CGFloat = CGFloat(arc4random() % 255) / 255.0
        let blueValue: CGFloat = CGFloat(arc4random() % 255) / 255.0

        self.view.backgroundColor = UIColor(red: redValue,
            green: greenValue,
            blue: blueValue,
            alpha: 1.0)
    }
    
    func onClick(sender: AnyObject) {
        NSLog("OK Button onClick1.")
    }
    
    func onClick(external sender: AnyObject, forEvent event: UIEvent) {
        NSLog("OK Button onClick2.")
    }
}

