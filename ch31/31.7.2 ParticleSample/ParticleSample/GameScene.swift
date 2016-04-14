//
//  GameScene.swift
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

enum ActionTypes : Int {
    case kBokeh = 100, kFire, kFireflies, kMagic, kRain, kSmoke, kSnow, kSpark
}

class GameScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        let labelSpace:CGFloat = 50
        let labelFontSize:CGFloat = 28
        
        let bokehLabel = WKLabelButton(text: "Bokeh", fontNamed:"Chalkduster", callback: "touchBokehLabel")
        bokehLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:self.frame.height - 90)
        bokehLabel.fontColor = UIColor.whiteColor()
        bokehLabel.fontSize = labelFontSize
        self.addChild(bokehLabel)
        
        let fireLabel = WKLabelButton(text: "Fire", fontNamed:"Chalkduster", callback: "touchFireLabel")
        fireLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:bokehLabel.position.y - labelSpace)
        fireLabel.fontColor = UIColor.whiteColor()
        fireLabel.fontSize = labelFontSize
        self.addChild(fireLabel)
        
        let firefliesLabel = WKLabelButton(text: "Fireflies", fontNamed:"Chalkduster", callback: "touchFirefliesLabel")
        firefliesLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:fireLabel.position.y - labelSpace)
        firefliesLabel.fontColor = UIColor.whiteColor()
        firefliesLabel.fontSize = labelFontSize
        self.addChild(firefliesLabel)
        
        let magicLabel = WKLabelButton(text: "Magic", fontNamed:"Chalkduster", callback: "touchMagicLabel")
        magicLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:firefliesLabel.position.y - labelSpace)
        magicLabel.fontColor = UIColor.whiteColor()
        magicLabel.fontSize = labelFontSize
        self.addChild(magicLabel)
        
        let rainLabel = WKLabelButton(text: "Rain", fontNamed:"Chalkduster", callback: "touchRainLabel")
        rainLabel.position = CGPoint(x:CGRectGetMidX(self.frame),  y:magicLabel.position.y - labelSpace)
        rainLabel.fontColor = UIColor.whiteColor()
        rainLabel.fontSize = labelFontSize
        self.addChild(rainLabel)
        
        let smokeLabel = WKLabelButton(text: "Smoke", fontNamed:"Chalkduster", callback: "touchSmokeLabel")
        smokeLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:rainLabel.position.y - labelSpace)
        smokeLabel.fontColor = UIColor.whiteColor()
        smokeLabel.fontSize = labelFontSize
        self.addChild(smokeLabel)
        
        let snowLabel = WKLabelButton(text: "Snow", fontNamed:"Chalkduster", callback: "touchSnowLabel")
        snowLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:smokeLabel.position.y - labelSpace)
        snowLabel.fontColor = UIColor.whiteColor()
        snowLabel.fontSize = labelFontSize
        self.addChild(snowLabel)
        
        let sparkLabel = WKLabelButton(text: "Spark", fontNamed:"Chalkduster", callback: "touchSparkLabel")
        sparkLabel.position = CGPoint(x:CGRectGetMidX(self.frame),  y:snowLabel.position.y - labelSpace)
        sparkLabel.fontColor = UIColor.whiteColor()
        sparkLabel.fontSize = labelFontSize
        self.addChild(sparkLabel)
        
    }
    
    func touchBokehLabel() {
        print("touchBokehLabel")
        let doors = SKTransition.doorwayWithDuration(1.0)
        let actionScene = MyActionScene(fileNamed: "MyActionScene")
        actionScene?.selectedAction = .kBokeh
        self.view?.presentScene(actionScene!, transition: doors)
    }
    
    func touchFireLabel() {
        print("touchFireLabel")
        let doors = SKTransition.doorwayWithDuration(1.0)
        let actionScene = MyActionScene(fileNamed: "MyActionScene")
        actionScene?.selectedAction = .kFire
        self.view?.presentScene(actionScene!, transition: doors)
    }
    
    
    func touchFirefliesLabel() {
        print("touchFirefliesLabel")
        let doors = SKTransition.doorwayWithDuration(1.0)
        let actionScene = MyActionScene(fileNamed: "MyActionScene")
        actionScene?.selectedAction = .kFireflies
        self.view?.presentScene(actionScene!, transition: doors)
    }
    
    func touchMagicLabel() {
        print("touchMagicLabel")
        let doors = SKTransition.doorwayWithDuration(1.0)
        let actionScene = MyActionScene(fileNamed: "MyActionScene")
        actionScene?.selectedAction = .kMagic
        self.view?.presentScene(actionScene!, transition: doors)
    }
    
    func touchRainLabel() {
        print("touchRainLabel")
        let doors = SKTransition.doorwayWithDuration(1.0)
        let actionScene = MyActionScene(fileNamed: "MyActionScene")
        actionScene?.selectedAction = .kRain
        self.view?.presentScene(actionScene!, transition: doors)
    }
    
    func touchSmokeLabel() {
        print("touchSmokeLabel")
        let doors = SKTransition.doorwayWithDuration(1.0)
        let actionScene = MyActionScene(fileNamed: "MyActionScene")
        actionScene?.selectedAction = .kSmoke
        self.view?.presentScene(actionScene!, transition: doors)
    }
    
    func touchSnowLabel() {
        print("touchSnowLabel")
        let doors = SKTransition.doorwayWithDuration(1.0)
        let actionScene = MyActionScene(fileNamed: "MyActionScene")
        actionScene?.selectedAction = .kSnow
        self.view?.presentScene(actionScene!, transition: doors)
    }
    
    func touchSparkLabel() {
        print("touchSparkLabel")
        let doors = SKTransition.doorwayWithDuration(1.0)
        let actionScene = MyActionScene(fileNamed: "MyActionScene")
        actionScene?.selectedAction = .kSpark
        self.view?.presentScene(actionScene!, transition: doors)
    }
}
