//
//  SettingScene.swift
//  Hero
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

class SettingScene: SKScene {

    override func didMoveToView(view: SKView) {

        let okButton = WKSpriteButton(normalImageName: "ok-up",
            selectedImageName: "ok-down",
            callback: "touchOkButton")
        
        okButton.position = CGPoint(x:CGRectGetMidX(self.frame), y:80)
        self.addChild(okButton)
    }
    
    func touchOkButton() {
        print("touchOkButton")
        
        let doors = SKTransition.doorsCloseHorizontalWithDuration(0.6)
        let gameScene = GameScene(fileNamed: "GameScene")
        gameScene!.scaleMode = .AspectFill
        self.view?.presentScene(gameScene!, transition: doors)
    }
}
