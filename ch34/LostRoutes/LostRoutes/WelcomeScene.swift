//
//  WelcomeScene.swift
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

class WelcomeScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        self.setBackgroundTilesImageNamed("red_tiles")
        
        let gameplayAtlas = SKTextureAtlas(named:"gameplay")
        let homeAtlas = SKTextureAtlas(named:"home")
        let loadingAtlas = SKTextureAtlas(named:"loading")
        let settingHelpAtlas = SKTextureAtlas(named:"setting_help")
        let tilesAtlas = SKTextureAtlas(named:"tiles")
        
        let textureAtlas = [gameplayAtlas, homeAtlas, loadingAtlas, settingHelpAtlas, tilesAtlas]
        
        var frames = [SKTexture]()
        let numFrames = 4
        for var i = 1; i <= numFrames; i++ {
            let textureName = "loading\(i)"
            frames.append(loadingAtlas.textureNamed(textureName))
        }
        let animate = SKAction.animateWithTextures(frames, timePerFrame: 0.25,
            resize: false,
            restore: true)
        
        //第一个帧作为精灵纹理
        let loadingSprite = SKSpriteNode(texture: frames[0])
        loadingSprite.position = CGPoint(x:CGRectGetMidX(self.frame), y:230)
        addChild(loadingSprite)
        
        loadingSprite.runAction(SKAction.repeatActionForever(animate) , withKey: "loading")
        
        SKTextureAtlas.preloadTextureAtlases(textureAtlas) { () -> Void in
            
            loadingSprite.removeActionForKey("loading")
            
            let doors = SKTransition.doorsOpenHorizontalWithDuration(1.0)
            let scene = HomeScene(fileNamed: "HomeScene")
            scene!.scaleMode = .AspectFill            
            self.view?.presentScene(scene!, transition: doors)
            
        }
    }
    
}
