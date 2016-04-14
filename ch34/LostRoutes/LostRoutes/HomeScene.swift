//
//  HomeScene.swift
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

class HomeScene: SKScene {
    
    let defaults = NSUserDefaults.standardUserDefaults()
    var backgroundMusic: SKAudioNode!
    
    override func didMoveToView(view: SKView) {
        
        self.setBackgroundTilesImageNamed("red_tiles")
        
        let homeAtlas = SKTextureAtlas(named:"home")
        
        // 设置菜单
        let settingMenuItem = WKSpriteButton(normalTexture: homeAtlas.textureNamed("buttonSetting"),
            selectedTexture: homeAtlas.textureNamed("buttonSettingOn"),
            callback: "touchedSettingMenuItem")
        settingMenuItem.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        self.addChild(settingMenuItem)
        
        // 开始菜单
        let startMenuItem = WKSpriteButton(normalTexture: homeAtlas.textureNamed("buttonStart"),
            selectedTexture: homeAtlas.textureNamed("buttonStartOn"),
            callback: "touchedStartMenuItem")
        startMenuItem.position = CGPoint(x:CGRectGetMidX(self.frame), y:settingMenuItem.position.y + 80)
        self.addChild(startMenuItem)
        
        // 帮助菜单
        let helpMenuItem = WKSpriteButton(normalTexture: homeAtlas.textureNamed("buttonHelp"),
            selectedTexture: homeAtlas.textureNamed("buttonHelpOn"),
            callback: "touchedHelpMenuItem")
        helpMenuItem.position = CGPoint(x:CGRectGetMidX(self.frame), y:settingMenuItem.position.y - 80)
        self.addChild(helpMenuItem)
        
        if defaults.boolForKey(Configuration.MusicKey) {
            backgroundMusic = SKAudioNode(fileNamed: Configuration.HomeMusic)
            addChild(backgroundMusic)
        }
        
    }
    
    func touchedStartMenuItem() {
        if defaults.boolForKey(Configuration.SoundKey) {
            WKSoundHelper.playSoundEffect(self, fileNamed: Configuration.TapSoundEffect, completion: { () -> Void in
                let doors = SKTransition.doorsOpenHorizontalWithDuration(1.0)
                let scene = GamePlayScene(fileNamed: "GamePlayScene")
                scene!.scaleMode = .AspectFill
                self.view?.presentScene(scene!, transition: doors)
            })
        } else {
            let doors = SKTransition.doorsOpenHorizontalWithDuration(1.0)
            let scene = GamePlayScene(fileNamed: "GamePlayScene")
            scene!.scaleMode = .AspectFill
            self.view?.presentScene(scene!, transition: doors)
        }
        
        if defaults.boolForKey(Configuration.MusicKey) {
            backgroundMusic.runAction(SKAction.stop())
        }
    }
    
    func touchedSettingMenuItem() {
        if defaults.boolForKey(Configuration.SoundKey) {
            WKSoundHelper.playSoundEffect(self, fileNamed: Configuration.TapSoundEffect, completion: { () -> Void in
                let doors = SKTransition.doorsOpenHorizontalWithDuration(1.0)
                let scene = SettingScene(fileNamed: "SettingScene")
                scene!.scaleMode = .AspectFill
                self.view?.presentScene(scene!, transition: doors)
            })
        } else {
            let doors = SKTransition.doorsOpenHorizontalWithDuration(1.0)
            let scene = SettingScene(fileNamed: "SettingScene")
            scene!.scaleMode = .AspectFill
            self.view?.presentScene(scene!, transition: doors)
        }
        
        if defaults.boolForKey(Configuration.MusicKey) {
            backgroundMusic.runAction(SKAction.stop())
        }
    }
    
    func touchedHelpMenuItem() {
        if defaults.boolForKey(Configuration.SoundKey) {
            WKSoundHelper.playSoundEffect(self, fileNamed: Configuration.TapSoundEffect, completion: { () -> Void in
                let doors = SKTransition.doorsOpenHorizontalWithDuration(1.0)
                let scene = HelpScene(fileNamed: "HelpScene")
                scene!.scaleMode = .AspectFill
                self.view?.presentScene(scene!, transition: doors)
            })
        } else {
            let doors = SKTransition.doorsOpenHorizontalWithDuration(1.0)
            let scene = HelpScene(fileNamed: "HelpScene")
            scene!.scaleMode = .AspectFill
            self.view?.presentScene(scene!, transition: doors)
        }
        
        if defaults.boolForKey(Configuration.MusicKey) {
            backgroundMusic.runAction(SKAction.stop())
        }
    }
}
