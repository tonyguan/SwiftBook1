//
//  SettingScene.swift
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

class SettingScene: SKScene {
    
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
        
        let soundToggleStatus = defaults.boolForKey(Configuration.SoundKey)
        let soundToggleButton = WKSpriteToggleButton(onTexture: settingHelpAtlas.textureNamed("checkOn"), offTexture: settingHelpAtlas.textureNamed("checkOff"),
            onCallback: "touchSoundOn",
            offCallback: "touchSoundOff",
            status: soundToggleStatus)
        
        soundToggleButton.position = CGPoint(x:220, y:400)
        self.addChild(soundToggleButton)
        
        let musicToggleStatus = defaults.boolForKey(Configuration.MusicKey)
        let musicToggleButton = WKSpriteToggleButton(onTexture: settingHelpAtlas.textureNamed("checkOn"), offTexture: settingHelpAtlas.textureNamed("checkOff"),
            onCallback: "touchMusicOn",
            offCallback: "touchMusicOff",
            status: musicToggleStatus)
        
        musicToggleButton.position = CGPoint(x:220, y:330)
        self.addChild(musicToggleButton)

        if defaults.boolForKey(Configuration.MusicKey) {
            backgroundMusic = SKAudioNode(fileNamed: Configuration.HomeMusic)
            addChild(backgroundMusic)
        }
        
    }
    
    func touchMusicOn() {
        print("touchMusicOn")
        if defaults.boolForKey(Configuration.SoundKey) {
            WKSoundHelper.playSoundEffect(self, fileNamed: Configuration.TapSoundEffect)
        }
        backgroundMusic.runAction(SKAction.stop())
        //状态 On->Off
        defaults.setBool(false, forKey: Configuration.MusicKey)
    }
    
    func touchMusicOff() {
        print("touchMusicOff")
        
        if defaults.boolForKey(Configuration.SoundKey) {
            WKSoundHelper.playSoundEffect(self, fileNamed: Configuration.TapSoundEffect)
        }
        
        backgroundMusic = SKAudioNode(fileNamed: Configuration.HomeMusic)
        addChild(backgroundMusic)
        //状态 Off->On
        defaults.setBool(true, forKey: Configuration.MusicKey)
    }
    
    func touchSoundOn() {
        print("touchSoundOn")
        //已经是On状态
        if defaults.boolForKey(Configuration.SoundKey) {
            WKSoundHelper.playSoundEffect(self, fileNamed: Configuration.TapSoundEffect)
        }
        //状态 On->Off
        defaults.setBool(false, forKey: Configuration.SoundKey)
    }
    
    func touchSoundOff() {
        print("touchSoundOff")
        //状态 Off->On
        defaults.setBool(true, forKey: Configuration.SoundKey)
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
