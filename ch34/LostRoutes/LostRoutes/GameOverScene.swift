//
//  GameOverScene.swift
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

class GameOverScene: SKScene {
    
    //得分
    var score = 0
    var labelScore: SKLabelNode?
    
    let defaults = NSUserDefaults.standardUserDefaults()
    var backgroundMusic: SKAudioNode!
    
    override func didMoveToView(view: SKView) {
        self.setBackgroundTilesImageNamed("blue_tiles")
        
        //把所有标签节点对象字体全部设置为"汉仪黛玉体简"
        for  node in self.children where node is SKLabelNode {
            let labelNode = node as! SKLabelNode
            labelNode.fontName = "汉仪黛玉体简"
        }
        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        var highScore = defaults.integerForKey(Configuration.HighScoreKey)
        
        if highScore < score {
            highScore = score
            defaults.setInteger(highScore, forKey: Configuration.HighScoreKey)
        }
        
        //获得得分标签对象
        labelScore = childNodeWithName("labelScore") as? SKLabelNode
        labelScore!.text = String(format: "%d", highScore)
        
        //设置背景音乐
        if defaults.boolForKey(Configuration.MusicKey) {
            backgroundMusic = SKAudioNode(fileNamed: Configuration.HomeMusic)
            addChild(backgroundMusic)
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        if defaults.boolForKey(Configuration.SoundKey) {
            WKSoundHelper.playSoundEffect(self, fileNamed: Configuration.TapSoundEffect, completion: { () -> Void in
                let doors = SKTransition.doorsOpenHorizontalWithDuration(1.0)
                let scene = GamePlayScene(fileNamed: "GamePlayScene")
                scene!.scaleMode = .AspectFill
                self.view?.presentScene(scene!, transition: doors)
            })
        } else {
            let doors = SKTransition.doorsOpenHorizontalWithDuration(1.0)
            let scene = GamePlayScene(fileNamed: "GamePlayScene")
            scene!.scaleMode = .AspectFill
            self.view?.presentScene(scene!, transition: doors)
        }
        
        if defaults.boolForKey(Configuration.MusicKey) {
            backgroundMusic.runAction(SKAction.stop())
        }
        
        
    }
}
