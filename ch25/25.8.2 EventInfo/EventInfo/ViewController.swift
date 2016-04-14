//
//  ViewController.swift
//  EventInfo
//
//  Created by 关东升 on 15/10/5.
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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        NSLog("touchesBegan - touch count = %i", touches.count)
        for touch in touches {
            self.logTouchInfo(touch)
        }
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        NSLog("touchesMoved - touch count = %i", touches.count)
        for touch in touches {
            self.logTouchInfo(touch)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        NSLog("touchesEnded - touch count = %i", touches.count)
        for touch in touches {
            self.logTouchInfo(touch)
        }
    }
    
    override func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?) {
        NSLog("touchesCancelled - touch count = %i", touches!.count)
        for touch in touches! {
            self.logTouchInfo(touch)
        }
    }
    
    func logTouchInfo(touch : UITouch) {
        
        let locInSelf = touch.locationInView(self.view)
        let locInWin = touch.locationInView(nil)
        
        NSLog("    touch.locationInView = {%.2f, %.2f}", locInSelf.x.native, locInSelf.y.native)
        NSLog("    touch.locationInWin = {%.2f, %.2f}", locInWin.x.native, locInWin.y.native)
        NSLog("    touch.phase = %i", touch.phase.rawValue) //UITouchPhase
        NSLog("    touch.tapCount = %d", touch.tapCount)
        
    }
    
}

