//
//  HelpScene.swift
//  LostRoutes
//
//  Created by 关东升 on 15/9/24.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import SpriteKit

class HelpScene: SKScene {
    
    let defaults = NSUserDefaults.standardUserDefaults()
    var backgroundMusic: SKAudioNode!
    
    override func didMoveToView(view: SKView) {
        
        self.setBackgroundTilesImageNamed("red_tiles")
        
        let settingHelpAtlas = SKTextureAtlas(named:"setting_help")
        
        // Ok按钮
        let okMenuItem = WKSpriteButton(normalTexture:
            settingHelpAtlas.textureNamed("buttonOk"),
            selectedTexture: settingHelpAtlas.textureNamed("buttonOkOn"),
            callback: "touchedOkMenuItem")
        
        okMenuItem.position = CGPoint(x:210, y:54)
        self.addChild(okMenuItem)
        
        //把所有标签节点对象字体全部设置为"汉仪黛玉体简"
        for  node in self.children where node is SKLabelNode {
            let labelNode = node as! SKLabelNode
            labelNode.fontName = "汉仪黛玉体简"
        }
        
        if defaults.boolForKey(Configuration.MusicKey) {
            backgroundMusic = SKAudioNode(fileNamed: Configuration.HomeMusic)
            addChild(backgroundMusic)
        }
    }
    
    func touchedOkMenuItem() {
        if defaults.boolForKey(Configuration.SoundKey) {
            WKSoundHelper.playSoundEffect(self, fileNamed: Configuration.TapSoundEffect, completion: { () -> Void in
                let doors = SKTransition.doorsCloseHorizontalWithDuration(1.0)
                let scene = HomeScene(fileNamed: "HomeScene")
                scene!.scaleMode = .AspectFill
                self.view?.presentScene(scene!, transition: doors)
            })
        } else {
            let doors = SKTransition.doorsCloseHorizontalWithDuration(1.0)
            let scene = HomeScene(fileNamed: "HomeScene")
            scene!.scaleMode = .AspectFill
            self.view?.presentScene(scene!, transition: doors)
        }
        
        if defaults.boolForKey(Configuration.MusicKey) {
            backgroundMusic.runAction(SKAction.stop())
        }
    }
    
}
