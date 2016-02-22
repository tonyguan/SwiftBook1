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

        let ground = SKSpriteNode(imageNamed: "ground")
        ground.position = CGPoint(x:CGRectGetMidX(self.frame), y:15)
        self.addChild(ground)
        
        let hero = SKSpriteNode(imageNamed: "hero")
        hero.xScale = 0.5
        hero.yScale = 0.5
        hero.position = CGPoint(x:320, y:70)
        self.addChild(hero)

    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    }
   
    override func update(currentTime: CFTimeInterval) {
    }
}
