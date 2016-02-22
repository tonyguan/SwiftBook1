//
//  Enemy.swift
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

//定义敌人名称 也是敌人精灵帧的名字
let EnemyStoneTexture = "stone1"
let Enemy1Texture = "enemy1"
let Enemy2Texture = "enemy2"
let EnemyPlanetTexture = "enemyPlanet"

//定义敌人类型
enum EnemyTypes {
    case EnemyTypeStone        //陨石
    case EnemyTypeEnemy1      //敌机1
    case EnemyTypeEnemy2      //敌机2
    case EnemyTypePlanet       //行星
}

class Enemy: SKSpriteNode {
    
    //敌人类型
    var enemyType: EnemyTypes
    //速度
    var velocity: CGVector
    //初始的生命值
    var initialHitPoints: UInt
    //当前的生命值
    var hitPoints: UInt = 0
    
    init(enemyType: EnemyTypes, velocity: CGVector) {
        
        self.enemyType = enemyType
        self.velocity = velocity
        
        var textureName: String?
        switch enemyType {
        case .EnemyTypeStone:
            textureName = EnemyStoneTexture
            self.initialHitPoints = 3
        case .EnemyTypeEnemy1:
            textureName = Enemy1Texture
            self.initialHitPoints = 5
        case .EnemyTypeEnemy2:
            textureName = Enemy2Texture
            self.initialHitPoints = 10
        case .EnemyTypePlanet:
            textureName = EnemyPlanetTexture
            self.initialHitPoints = 15
        }
        
        let texture = SKTexture(imageNamed: textureName!)
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        ///构造完成
        
        ///其他设置
        self.hidden = true

        switch enemyType {
        case .EnemyTypeStone:
            //一秒钟旋转180度
            let ac = SKAction.rotateByAngle(CGFloat(M_PI), duration: 0.5)
            self.runAction(SKAction.repeatActionForever(ac))
            //设置敌人物理引擎的物体
            let enemyBody = SKPhysicsBody(circleOfRadius: self.frame.width / 2 - 5)
            self.physicsBody = enemyBody
            
        case .EnemyTypePlanet:
            //一秒钟旋转-180度
            let ac = SKAction.rotateByAngle(CGFloat(-1 * M_PI), duration: 2)
            self.runAction(SKAction.repeatActionForever(ac))
            //设置敌人物理引擎的物体
            let enemyBody = SKPhysicsBody(circleOfRadius: self.frame.width / 2 - 5)
            self.physicsBody = enemyBody
            
        case .EnemyTypeEnemy1:
            //设置敌人物理引擎的物体
            let path = CGPathCreateMutable()
            CGPathMoveToPoint(path, nil, -2.5, -45.75)
            CGPathAddLineToPoint(path, nil, -29.5,-27.25)
            CGPathAddLineToPoint(path, nil, -53, -0.25)
            CGPathAddLineToPoint(path, nil, -34,43.25)
            CGPathAddLineToPoint(path, nil, 28, 44.25)
            CGPathAddLineToPoint(path, nil, 55,-2.25)
            
            let enemyBody = SKPhysicsBody(polygonFromPath: path)
            self.physicsBody = enemyBody
            
        case .EnemyTypeEnemy2:
            //设置敌人物理引擎的物体
            let enemyBody = SKPhysicsBody(texture: self.texture!, size: self.size)
            self.physicsBody = enemyBody
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func update(currentTime: CFTimeInterval) {
        
        //将要超出屏幕的下底边
        if (self.position.y + self.size.height/2 < 0) {
            self.spawn()
            return
        }
        
        //每次渲染一帧调用一次。
        let ac = SKAction.moveBy(velocity, duration: 0.0)
        self.runAction(ac)

    }
    
    func spawn() {
        
        let yPos = self.scene!.size.height + self.size.height/2
        let range = UInt32(self.scene!.frame.width - self.size.width)
        let xPos = CGFloat(arc4random_uniform(range)) + self.size.width/2
        
        //self.position = CGPoint(x: xPos, y: yPos)
        let ac = SKAction.moveTo(CGPoint(x: xPos, y: yPos), duration: 0.0)
        self.runAction(ac)
        
        self.hitPoints = self.initialHitPoints
        //显示出来
        self.hidden = false
        
    }
}
