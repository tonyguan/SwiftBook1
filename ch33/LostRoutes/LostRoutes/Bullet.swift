//
//  Bullet.swift
//  LostRoutes
//
//  Created by 关东升 on 15/9/25.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import SpriteKit

class Bullet: SKSpriteNode {
    
    //速度
    var velocity: CGVector
    
    init(texture: SKTexture?, velocity: CGVector) {
        
        self.velocity = velocity
        
        super.init(texture: texture, color: UIColor.clearColor(), size: texture!.size())
        ///构造完成
        
        self.hidden = true
        //设置子弹与物理引擎的关联
        let bulletBody = SKPhysicsBody(rectangleOfSize: self.size)
        self.physicsBody = bulletBody
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func update(currentTime: CFTimeInterval) {

        let ac = SKAction.moveBy(velocity, duration: 0.0)
        self.runAction(ac)
        
        //超出屏幕
        if self.position.y > self.scene!.size.height {
            self.removeFromParent()
        }
    }
    
    func shootBulletFromFighter(fighter: Fighter) {
        let xPos = fighter.position.x
        let yPos = fighter.position.y + fighter.size.height/2
        self.position = CGPoint(x: xPos, y: yPos)
        self.hidden = false
    }
}
