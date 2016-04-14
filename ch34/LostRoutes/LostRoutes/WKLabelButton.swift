//
//  WKLabelButton.swift
//  LostRoutes
//
//  Created by 关东升 on 15/9/19.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import SpriteKit

class WKLabelButton: SKLabelNode {

    var callback: Selector
    
    init(text: String, fontNamed: String, callback: Selector) {

        self.callback = callback
        
        super.init()

        //开启触摸事件支持
        self.userInteractionEnabled = true
        self.text = text
        self.fontName = fontNamed
        self.fontSize = 20
        self.fontColor = UIColor.blackColor()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {

        let ac1 = SKAction.scaleBy(1.2, duration: 0.1)
        self.runAction(ac1)
        
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {

        let ac1 = SKAction.scaleBy(1.0/1.2, duration: 0.1)
        
        self.runAction(ac1, completion: { () -> Void in
            
            NSTimer.scheduledTimerWithTimeInterval(0.0,
                target: self.parent!,
                selector: self.callback,
                userInfo: nil,
                repeats: false)
            
        })
    }
    
}
