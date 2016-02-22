//
//  GameScene.swift
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

class GameScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        let settingButton = WKSpriteButton(normalImageName: "setting-up",
            selectedImageName: "setting-down",
            callback: "touchSettingButton")
        
        settingButton.position = CGPoint(x:220, y:115)
        self.addChild(settingButton)

    }

    func touchSettingButton() {
        print("touchSettingButton")

        let doors = SKTransition.doorwayWithDuration(1.0)
        let settingScene = SettingScene(fileNamed: "SettingScene")
        //self.view?.presentScene(settingScene!)
        settingScene!.scaleMode = .AspectFill
        self.view?.presentScene(settingScene!, transition: doors)
    }
}
