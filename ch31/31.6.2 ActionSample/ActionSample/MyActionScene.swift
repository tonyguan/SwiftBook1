//
//  MyActionScene.swift
//  ActionSample
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
        
        let backButton = WKSpriteButton(normalImageName: "Back-up",
            selectedImageName: "Back-down",
            callback: "touchBackButton")
        
        backButton.position = CGPoint(x:70, y:290)
        self.addChild(backButton)
        
        let goButton = WKSpriteButton(normalImageName: "Go-up",
            selectedImageName: "Go-down",
            callback: "touchGoButton")
        
        goButton.position = CGPoint(x:480, y:60)
        self.addChild(goButton)
        
        let sprite = SKSpriteNode(imageNamed: "hero")
        sprite.name = "hero"
        sprite.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        self.addChild(sprite)
        
    }
    
    func touchBackButton() {
        let doors = SKTransition.doorsCloseHorizontalWithDuration(0.6)
        let gameScene = GameScene(fileNamed: "GameScene")
        gameScene!.scaleMode = .AspectFill
        self.view?.presentScene(gameScene!, transition: doors)
    }
    
    func touchGoButton() {
        
        switch selectedAction! {
        case .kSequence:
            self.runSequenceAction()
        case .kGroup :
            self.runGroupAction()
        case .kRepeate:
            self.runRepeateAction()
        case .kRepeatForever:
            self.runRepeatForeverAction()
        case .kReverse:
            self.runReverseAction()
        }
        
    }
    
    //执行顺序动作方法
    func runSequenceAction() {
        
        if let sprite = self.childNodeWithName("hero") {
            
            let scale = SKAction.scaleTo(0.5, duration: 1.5)
            let fade = SKAction.fadeOutWithDuration(1.5)
            let sequence = SKAction.sequence([scale, fade])
            
            sprite.runAction(sequence)
        }
    }
    
    //执行并列动作方法
    func runGroupAction() {
        
        if let sprite = self.childNodeWithName("hero") {
            
            let scale = SKAction.scaleTo(0.5, duration: 1.5)
            let fade = SKAction.fadeOutWithDuration(1.5)
            let group = SKAction.group([scale, fade])
            
            sprite.runAction(group)
        }
    }
    
    //执行有限次数重复动作方法
    func runRepeateAction() {
        
        if let sprite = self.childNodeWithName("hero") {
            
            let rotate = SKAction.rotateByAngle(CGFloat(M_PI/2), duration:1)
            let repeate3 = SKAction.repeatAction(rotate, count: 3)
            
            sprite.runAction(repeate3)
        }
        
    }
    
    //执行无限次数重复动作方法
    func runRepeatForeverAction() {
        
        if let sprite = self.childNodeWithName("hero") {
            
            let rotate = SKAction.rotateByAngle(CGFloat(M_PI/2), duration:1)
            let forever = SKAction.repeatActionForever(rotate)
            
            sprite.runAction(forever)
        }
    }
    
    //执行反动作方法
    func runReverseAction() {
        
        if let sprite = self.childNodeWithName("hero") {
            
            let scale = SKAction.scaleBy(0.5, duration: 1.5)
            let reverseScale = scale.reversedAction()
            let sequence = SKAction.sequence([scale, reverseScale])
            
            let forever = SKAction.repeatActionForever(sequence)
            
            sprite.runAction(forever)
        }
    }
}