//
//  Fighter.swift
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

class Fighter: SKSpriteNode {

    //当前的生命值
    var hitPoints: UInt = 0
    
    init(texture: SKTexture?) {

        super.init(texture: texture, color: UIColor.clearColor(), size: texture!.size())
        ///构造完成
        
        ///其他设置
        
        //设置粒子系统，并放在飞机下面.
        if let particles = SKEmitterNode(fileNamed: "fire.sks") {
            addChild(particles)
            particles.position = CGPoint(x:0, y: (0 - self.size.height / 2))
        } 
        
        //设置物理引擎的物体
        let path = CGPathCreateMutable()
        CGPathMoveToPoint(path, nil, -43.5,15.5)
        CGPathAddLineToPoint(path, nil, -23.5,33)
        CGPathAddLineToPoint(path, nil, 28.5,34)
        CGPathAddLineToPoint(path, nil, 48,17.5)
        CGPathAddLineToPoint(path, nil, 0,-39.5)
        
        
        let body = SKPhysicsBody(polygonFromPath: path)
        self.physicsBody = body
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
