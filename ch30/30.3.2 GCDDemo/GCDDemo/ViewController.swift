//
//  ViewController.swift
//  BlockDemo
//
//  Created by 关东升 on 15/10/9.
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
    
    let STR_URL = "http://www.51work6.com/book/test2.jpg"
    
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        let screen = UIScreen.mainScreen().bounds
        
        let button = UIButton(type: UIButtonType.System)
        button.setTitle("Load Image", forState: UIControlState.Normal)
        
        let buttonWidth:CGFloat = 200
        let buttonHeight:CGFloat = 20
        let buttonTopView:CGFloat = 80
        
        button.frame = CGRectMake((screen.size.width - buttonWidth)/2 , buttonTopView, buttonWidth, buttonHeight)
        
        button.addTarget(self, action: "onClick:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(button)
        
        let imageViewWidth:CGFloat = 300
        let imageViewHeight:CGFloat = 260
        let imageViewTopView:CGFloat = 120
        
        imageView = UIImageView(frame: CGRectMake((screen.size.width - imageViewWidth)/2 , imageViewTopView, imageViewWidth, imageViewHeight))
        
        self.view.addSubview(imageView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func onClick(sender: AnyObject) {
        
        self.imageView.image = nil
        
        let imgkURL = NSURL(string: STR_URL)
        
        let priority = DISPATCH_QUEUE_PRIORITY_DEFAULT
        
        dispatch_async(dispatch_get_global_queue(priority, 0), {
            
            let imgData = NSData(contentsOfURL: imgkURL!)
            let img = UIImage(data: imgData!)
            
            dispatch_async(dispatch_get_main_queue(), {
                self.imageView.image = img
            })
        })
    }
    
}

