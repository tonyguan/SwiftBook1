//
//  MyActionScene.swift
//  ParticleSample
//
//  Created by 关东升 on 15/9/20.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import SpriteKit

class MyActionScene: SKScene {
    
    var selectedAction: ActionTypes?
    
    override func didMoveToView(view: SKView) {
        
        let backLabel = WKLabelButton(text: "<Back", fontNamed:"Chalkduster", callback: "touchBackLabel")
        backLabel.position = CGPoint(x:self.frame.width - 60, y:30)
        backLabel.zPosition = 100
        backLabel.fontSize = 28
        backLabel.fontColor = UIColor.whiteColor()
        self.addChild(backLabel)
        
        let label = SKLabelNode(fontNamed:"Chalkduster")
        label.fontSize = 28
        label.fontColor = UIColor.whiteColor()
        label.position = CGPoint(x:CGRectGetMidX(self.frame), y:self.frame.height - 60)
        self.addChild(label)
        
        var fileNamed: String?
        
        switch selectedAction! {
        case .kBokeh:
            fileNamed = "BokehParticle.sks"
            label.text = "Bokeh"
        case .kFire:
            fileNamed = "FireParticle.sks"
            label.text = "Fire"
        case .kFireflies:
            fileNamed = "FirefliesParticle.sks"
            label.text = "Fireflies"
        case .kMagic:
            fileNamed = "MagicParticle.sks"
            label.text = "Magic"
        case .kRain:
            fileNamed = "RainParticle.sks"
            label.text = "Rain"
        case .kSmoke:
            fileNamed = "SmokeParticle.sks"
            label.text = "Smoke"
        case .kSnow:
            fileNamed = "SnowParticle.sks"
            label.text = "Snow"
        case .kSpark:
            fileNamed = "SparkParticle.sks"
            label.text = "Spark"
        }
        
        if let particles = SKEmitterNode(fileNamed: fileNamed!) {
            particles.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
            addChild(particles)
        }
    }
    
    func touchBackLabel() {
        let push = SKTransition.pushWithDirection(.Left, duration: 0.6)
        let gameScene = GameScene(fileNamed: "GameScene")
        self.view?.presentScene(gameScene!, transition: push)
    }
  
}