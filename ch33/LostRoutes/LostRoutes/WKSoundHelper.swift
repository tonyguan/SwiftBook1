//
//  WKSoundHelper.swift
//  Hero
//
//  Created by 关东升 on 15/9/22.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import SpriteKit

struct WKSoundHelper {
    
    static func playSoundEffect(parent: SKNode, fileNamed: String, completion:() -> Void) {
        
        let soundNode = SKAudioNode(fileNamed: fileNamed)
        
        soundNode.positional = true
        soundNode.position = CGPoint(x: -1024, y: 0)
        soundNode.autoplayLooped = false
        
        parent.addChild(soundNode)
        
        let moveAction = SKAction.moveToX(1024, duration: 0.5)
        let group = SKAction.group([moveAction, SKAction.play()])
        
        soundNode.runAction(group, completion: completion)
    
    }
    
    static func playSoundEffect(parent: SKNode, fileNamed: String) {
        
        let soundNode = SKAudioNode(fileNamed: fileNamed)
        
        soundNode.positional = true
        soundNode.position = CGPoint(x: -1024, y: 0)
        soundNode.autoplayLooped = false
        
        parent.addChild(soundNode)
        
        let moveAction = SKAction.moveToX(1024, duration: 0.5)
        let group = SKAction.group([moveAction, SKAction.play()])
        
        soundNode.runAction(group)
        
    }
}