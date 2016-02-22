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
    
    var walkFrames = [SKTexture]()
    var hero: SKSpriteNode!
    
    override func didMoveToView(view: SKView) {
        
        let textureAtlas = SKTextureAtlas(named:"hero")
       
        let numFrames: Int = textureAtlas.textureNames.count
        for var i = 1; i <= numFrames; i++ {
            let heroTextureName = "hero\(i)"
            walkFrames.append(textureAtlas.textureNamed(heroTextureName))
        }
        
        let toggleButton = WKSpriteToggleButton(onImageName: "go",
            offImageName: "stop",
            onCallback: "touchToggleButtonOn",
            offCallback: "touchToggleButtonOff")
        
        toggleButton.position = CGPoint(x:480, y:60)
        self.addChild(toggleButton)
        
        let firstFrame: SKTexture = walkFrames[0]
        
        hero = SKSpriteNode(texture: firstFrame)
        hero.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        self.addChild(hero)
        
    }
    
    func touchToggleButtonOn() {
        print("touchToggleButtonOn")
        let animate = SKAction.animateWithTextures(walkFrames, timePerFrame: 0.15,
            resize: false,
            restore: true)
        hero.runAction(SKAction.repeatActionForever(animate), withKey: "heroMoving")
    }
    
    func touchToggleButtonOff() {
        print("touchToggleButtonOff")
        hero.removeActionForKey("heroMoving")
    }
}
