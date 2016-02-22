//
//  GamePlayScene.swift
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

class GamePlayScene: SKScene, SKPhysicsContactDelegate {
    
    //上一次子弹发射时间
    var lastUpdateTime: CFTimeInterval = 0.0
    //两次发射子弹最小时间间隔
    var timeDelta: CFTimeInterval = 0.2
    
    var labelScore: SKLabelNode?
    var labelLife: SKLabelNode?
    //得分
    var score = 0
    //记录0~999分数
    var scorePlaceholder = 0
    
    let defaults = NSUserDefaults.standardUserDefaults()
    var backgroundMusic: SKAudioNode!
    
    var gameplayAtlas = SKTextureAtlas(named:"gameplay")
    //当前场景暂停状态
    var pauseStatus = false
    var fighter: Fighter?
    
    override func didMoveToView(view: SKView) {
        
        //初始化物理世界
        self.physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)//使得物体不受重力影响
        self.physicsWorld.contactDelegate = self
        
        //初始化游戏背景.
        initBG()
        
        //初始化敌人
        initEnemys()
        
        //初始化玩家飞机
        initFighter()
        
        //初始化得分栏
        initScoreBar()
    
    }

    
    //MARK: --初始化游戏背景.
    func initBG() {

        self.setBackgroundTilesImageNamed("blue_tiles")
        
        //把所有标签节点对象字体全部设置为"汉仪黛玉体简"
        for  node in self.children where node is SKLabelNode {
            let labelNode = node as! SKLabelNode
            labelNode.fontName = "汉仪黛玉体简"
        }
        
        //添加背景精灵1.
        let sprite1 = SKSpriteNode(texture: gameplayAtlas.textureNamed("bgSprite1"))
        sprite1.position = CGPoint(x:-50, y:-50)
        addChild(sprite1)
        
        let ac1 = SKAction.moveBy(CGVector(dx: 500, dy: 600), duration: 20)
        let ac2 = ac1.reversedAction()
        let as1 = SKAction.sequence([ac1, ac2])
        sprite1.runAction(SKAction.repeatActionForever(as1))
        
        //添加背景精灵2.
        let sprite2 = SKSpriteNode(texture: gameplayAtlas.textureNamed("bgSprite2"))
        sprite2.position = CGPoint(x:self.frame.width, y:0)
        addChild(sprite2)
        
        let ac3 = SKAction.moveBy(CGVector(dx: -500, dy: 600), duration: 10)
        let ac4 = ac3.reversedAction()
        let as2 = SKAction.sequence([ac3, ac4])
        sprite2.runAction(SKAction.repeatActionForever(as2))
        
        //设置背景音乐
        if defaults.boolForKey(Configuration.MusicKey) {
            backgroundMusic = SKAudioNode(fileNamed: Configuration.GameMusic)
            addChild(backgroundMusic)
        }
    }
    
    //MARK: --初始化玩家的飞机
    func initFighter() {
        
        fighter = Fighter(texture: gameplayAtlas.textureNamed("fighter"))
        addChild(fighter!)
        fighter?.position = CGPoint(x: CGRectGetMidX(self.frame), y: 70)
        fighter?.zPosition = 20
        fighter?.hitPoints = 5
        fighter?.name = "me"
        
        fighter?.physicsBody!.categoryBitMask = Configuration.fighterCategory
        fighter?.physicsBody!.contactTestBitMask = Configuration.enemyCategory
        fighter?.physicsBody!.collisionBitMask   =   0x0
    }
    
    
    //MARK: --初始化敌人.
    func initEnemys() {
        
        //添加陨石1.
        let stone1 = Enemy(enemyType: .EnemyTypeStone, velocity: CGVector(dx: 0, dy: -1.6))
        stone1.name = "enemy"
        stone1.zPosition = 10
        addChild(stone1)
        
        //添加行星.
        let planet = Enemy(enemyType: .EnemyTypePlanet, velocity: CGVector(dx: 0, dy: -0.8))
        planet.name = "enemy"
        planet.zPosition = 10
        addChild(planet)
        
        //添加敌机1.
        let enemyFighter1 = Enemy(enemyType: .EnemyTypeEnemy1, velocity: CGVector(dx: 0, dy: -1.2))
        enemyFighter1.name = "enemy"
        enemyFighter1.zPosition = 10
        addChild(enemyFighter1)
        
        //添加敌机2.
        let enemyFighter2 = Enemy(enemyType: .EnemyTypeEnemy2, velocity: CGVector(dx: 0, dy: -1.6))
        enemyFighter2.name = "enemy"
        enemyFighter2.zPosition = 10
        addChild(enemyFighter2)
        
        //设置敌人物体碰撞检测
        self.enumerateChildNodesWithName("enemy") { (node: SKNode!,
            stop: UnsafeMutablePointer<ObjCBool>) -> Void in
            
            let enemy = node as! Enemy
            enemy.physicsBody?.categoryBitMask = Configuration.enemyCategory
            enemy.physicsBody?.contactTestBitMask = Configuration.fighterCategory
            enemy.physicsBody?.collisionBitMask   =   0x0
        }
    }
    
    //MARK: --初始化得分栏
    func initScoreBar() {
        
        //获得得分标签对象
        labelScore = childNodeWithName("labelScore") as? SKLabelNode
        //获得生命值标签对象
        labelLife = childNodeWithName("labelLife") as? SKLabelNode
        labelScore!.text = String(format: "%d", score)
        labelLife!.text = String(format: "x%d", fighter!.hitPoints)
        
        //初始化暂停按钮.
        let pauseButton = WKSpriteButton(normalTexture:
            gameplayAtlas.textureNamed("buttonPause"),
            selectedTexture: gameplayAtlas.textureNamed("buttonPause"),
            callback: "touchedPauseButton")
        pauseButton.zPosition = 30
        pauseButton.position = CGPoint(x:30, y:538)
        self.addChild(pauseButton)

    }
    
    
    //MARK: --触摸移动
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //暂停状态下不接受触摸移动
        if pauseStatus {
            return
        }
        //移动飞机
        for touch in touches {
            
            let location = touch.locationInNode(self)
            let previousLocation = touch.previousLocationInNode(self)
            
            //移动的相对距离
            let moveDeltaX = location.x - previousLocation.x
            let moveDeltaY = location.y - previousLocation.y
            
            //场景高宽
            let sceneWidth = self.size.width
            let sceneHeight = self.size.height
            
            //飞机高宽的一半
            let halfWidth = fighter!.size.width / 2
            let halfHeight = fighter!.size.height / 2
            
            //飞机移动到新的位置
            var xPos = fighter!.position.x + moveDeltaX
            var yPos = fighter!.position.y + moveDeltaY
            
            if xPos < halfWidth {//不能超过左边屏幕
                xPos = halfWidth
            } else if xPos > (sceneWidth - halfWidth) {//不能超过右边屏幕
                xPos = sceneWidth - halfWidth
            }
            
            if yPos < halfHeight {//不能超过底边屏幕
                yPos = halfHeight
            } else if yPos > (sceneHeight - halfHeight) {//不能超过上边屏幕
                yPos = sceneHeight - halfHeight
            }
            
            fighter!.position = CGPoint(x: xPos, y: yPos)
        }
    }
    
    
    //MARK: --游戏循环
    override func update(currentTime: CFTimeInterval) {
        
        //更新敌人精灵状态
        for node in self.children where node is Enemy && self.pauseStatus == false {
            let enemy = node as! Enemy
            enemy.update(currentTime)
        }
        
        //子弹状态
        for node in self.children where node is Bullet && self.pauseStatus == false {
            let bullet = node as! Bullet
            bullet.update(currentTime)
        }
        
        //计算子弹发射时间
        let timeSinceLastUpdate = currentTime - lastUpdateTime
        if timeSinceLastUpdate >= timeDelta {
            //发射子弹
            self.shootBullet()
            lastUpdateTime = currentTime
        }
    }
    
    
    //MARK: --触摸暂停按钮
    func touchedPauseButton() {
        print("触摸暂停按钮...")
        
        if defaults.boolForKey(Configuration.SoundKey) {
            WKSoundHelper.playSoundEffect(self, fileNamed: Configuration.TapSoundEffect)
        }
        
        if pauseStatus {
            return
        }
        pauseStatus = true
        
        //设置敌人暂停
        self.enumerateChildNodesWithName("enemy") { (node: SKNode!,
            stop: UnsafeMutablePointer<ObjCBool>) -> Void in
            node.paused = self.pauseStatus
        }
        //设置我的飞机暂停
        fighter?.paused = pauseStatus
        
        //返回主菜单
        let backMenuItem = WKSpriteButton(normalTexture:
            gameplayAtlas.textureNamed("buttonBack"),
            selectedTexture: gameplayAtlas.textureNamed("buttonBackOn"),
            callback: "touchedBackMenuItem")
        backMenuItem.zPosition = 30
        backMenuItem.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMidY(self.frame) + 50)
        backMenuItem.name = "menu"
        addChild(backMenuItem)
        
        //继续游戏菜单
        let resumeMenuItem = WKSpriteButton(normalTexture:
            gameplayAtlas.textureNamed("buttonResume"),
            selectedTexture: gameplayAtlas.textureNamed("buttonResumeOn"),
            callback: "touchedResumeMenuItem")
        resumeMenuItem.zPosition = 30
        resumeMenuItem.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMidY(self.frame) - 20)
        resumeMenuItem.name = "menu"
        addChild(resumeMenuItem)
        
    }
    
    //MARK: --触摸返回主菜单
    func touchedBackMenuItem() {
        print("触摸返回主菜单...")
        
        if defaults.boolForKey(Configuration.SoundKey) {
            WKSoundHelper.playSoundEffect(self, fileNamed: Configuration.TapSoundEffect, completion: { () -> Void in
                let doors = SKTransition.doorsCloseHorizontalWithDuration(1.0)
                let scene = HomeScene(fileNamed: "HomeScene")
                scene!.scaleMode = .AspectFill
                self.view?.presentScene(scene!, transition: doors)
            })
        } else {
            let doors = SKTransition.doorsCloseHorizontalWithDuration(1.0)
            let scene = HomeScene(fileNamed: "HomeScene")
            scene!.scaleMode = .AspectFill
            self.view?.presentScene(scene!, transition: doors)
        }
        
        if defaults.boolForKey(Configuration.MusicKey) {
            backgroundMusic.runAction(SKAction.stop())
        }
        
    }
    
    //MARK: --触摸继续游戏菜单
    func touchedResumeMenuItem() {
        print("触摸继续游戏菜单...")
        
        if defaults.boolForKey(Configuration.SoundKey) {
            WKSoundHelper.playSoundEffect(self, fileNamed: Configuration.TapSoundEffect)
        }
        
        pauseStatus = false
        //设置飞机继续
        fighter?.paused = pauseStatus
        //设置敌人继续
        self.enumerateChildNodesWithName("enemy") { (node: SKNode!,
            stop: UnsafeMutablePointer<ObjCBool>) -> Void in
            node.paused = self.pauseStatus
        }
        
        //移除菜单
        self.enumerateChildNodesWithName("menu") { (node: SKNode!,
            stop: UnsafeMutablePointer<ObjCBool>) -> Void in
            node.removeFromParent()
        }
    }
    
    //MARK: --飞机发射子弹
    func shootBullet() {
        
        if fighter != nil && fighter?.hidden == false {
            let bullet = Bullet(texture: gameplayAtlas.textureNamed("bullet"), velocity: Configuration.GameSceneBulletVelocity)
            bullet.name = "bullet"
            bullet.zPosition = 20
            addChild(bullet)
            
            //设置子弹与物理引擎的关联
            bullet.physicsBody!.categoryBitMask = Configuration.bulletCategory
            bullet.physicsBody!.contactTestBitMask = Configuration.enemyCategory
            bullet.physicsBody!.collisionBitMask   =   0x0
            
            bullet.shootBulletFromFighter(fighter!)
        }
    }
    
    //MARK: --实现SKPhysicsContactDelegate 检测碰撞
    func didBeginContact(contact: SKPhysicsContact) {
        
        guard let nodeA = contact.bodyA.node ,
            let nodeB = contact.bodyB.node else {
            //过滤掉nil的节点
            return
        }
        
        //过滤掉隐藏的节点
        if nodeB.hidden || nodeA.hidden {
            return
        }
        
        var f: Fighter?
        if nodeA is Fighter {
            f = nodeA as? Fighter
        }
        if nodeB is Fighter {
            f = nodeB as? Fighter
        }
        
        var bullet: Bullet?
        if nodeA is Bullet {
            bullet = nodeA as? Bullet
        }
        if nodeB is Bullet {
            bullet = nodeB as? Bullet
        }
        
        var enemy: Enemy?
        if nodeA is Enemy {
            enemy = nodeA as? Enemy
        }
        if nodeB is Enemy {
            enemy = nodeB as? Enemy
        }
        
        //子弹击中敌人
        if bullet != nil && enemy != nil {
            bullet?.removeFromParent()
            handleBulletCollidingWithEnemy(enemy!)
        }
        
        //飞机与敌人相撞
        if f != nil && enemy != nil {
            handleFighterCollidingWithEnemy(enemy!)
        }
    }
    
    //MARK: --子弹与敌人的碰撞检测
    func handleBulletCollidingWithEnemy(enemy: Enemy) {
        
        if --enemy.hitPoints <= 0 {
            
            //敌人爆炸
            //爆炸点敌人物体顶部
            let xPos = enemy.position.x
            let yPos = enemy.position.y - enemy.size.height / 2
            self.explosion(CGPoint(x: xPos, y: yPos))
            
            //爆炸音效
            if defaults.boolForKey(Configuration.SoundKey) {
                WKSoundHelper.playSoundEffect(self, fileNamed: Configuration.ExplosionSoundEffect)
            }
            
            //计分
            switch enemy.enemyType {
            case .EnemyTypeStone:
                score += Configuration.enemyStoneScore
                scorePlaceholder += Configuration.enemyStoneScore
            case .EnemyTypeEnemy1:
                score += Configuration.enemy1Score
                scorePlaceholder += Configuration.enemy1Score
            case .EnemyTypeEnemy2:
                score += Configuration.enemy2Score
                scorePlaceholder += Configuration.enemy2Score
            case .EnemyTypePlanet:
                score += Configuration.enemyPlanetScore
                scorePlaceholder += Configuration.enemyPlanetScore
            }
            
            //每次获得1000分数，生命值 加一，scorePlaceholder恢复0.
            if scorePlaceholder >= 1000 {
                fighter!.hitPoints++
                scorePlaceholder-=1000
            }
            
            //更新得分栏
            labelScore!.text = String(format: "%d", score)
            labelLife!.text = String(format: "x%d", fighter!.hitPoints)
            
            //设置敌人消失
            enemy.hidden = true
            //重新生成
            enemy.spawn()
        }
    }
    
    
    //MARK: --处理玩家与敌人的碰撞检测
    func handleFighterCollidingWithEnemy(enemy: Enemy) {

        //设置敌人消失
        enemy.hidden = true
        //重新生成
        enemy.spawn()
        
        //设置玩家消失
        fighter?.hidden = true
        //减少一个生命值
        fighter!.hitPoints--
        
        //更新得分栏
        labelScore!.text = String(format: "%d", score)
        labelLife!.text = String(format: "x%d", fighter!.hitPoints)
        
        //敌人爆炸 飞机爆炸
        //爆炸点是两个物体的中心点
        let xPos = (enemy.position.x + fighter!.position.x) / 2
        let yPos = (enemy.position.y + fighter!.position.y) / 2
        self.explosion(CGPoint(x: xPos, y: yPos))
        
        if fighter!.hitPoints > 0 {
            //爆炸音效
            if defaults.boolForKey(Configuration.SoundKey) {
                WKSoundHelper.playSoundEffect(self, fileNamed: Configuration.ExplosionSoundEffect)
            }
            let ac1 = SKAction.moveTo(CGPoint(x: self.size.width / 2, y: 70), duration: 0.0)
            let ac2 = SKAction.fadeOutWithDuration(0.1)
            let acgruop1 = SKAction.group([ac1, ac2])
            
            //显示动作相当于Hide设置为false
            let ac3 = SKAction.unhide()
            let ac4 = SKAction.fadeInWithDuration(1.0)
            let acgruop2 = SKAction.group([ac3, ac4])
            
            let as1 = SKAction.sequence([acgruop1, acgruop2])
            fighter?.runAction(as1)
            
        } else {
            print("Game Over")
            //MARK: ---Game Over
            if defaults.boolForKey(Configuration.SoundKey) {
                //爆炸音效
                WKSoundHelper.playSoundEffect(self, fileNamed: Configuration.ExplosionSoundEffect, completion: { () -> Void in
                    let transition = SKTransition.fadeWithDuration(2.0)
                    let scene = GameOverScene(fileNamed: "GameOverScene")
                    //把得分传递过去
                    scene!.score = self.score
                    scene!.scaleMode = .AspectFill
                    self.view?.presentScene(scene!, transition: transition)
                })
            } else {
                let transition = SKTransition.fadeWithDuration(2.0)
                let scene = GameOverScene(fileNamed: "GameOverScene")
                //把得分传递过去
                scene!.score = self.score
                scene!.scaleMode = .AspectFill
                self.view?.presentScene(scene!, transition: transition)
            }
            
            if defaults.boolForKey(Configuration.MusicKey) {
                backgroundMusic.runAction(SKAction.stop())
            }
        }
        
    }

    //MARK: --爆炸效果
    func explosion(pos: CGPoint) {
        if let particles = SKEmitterNode(fileNamed: "explosion.sks") {
            particles.particlePosition = pos
            self.addChild(particles)
            self.runAction(SKAction.waitForDuration(0.2), completion: {
                particles.removeFromParent()
            })
        }
    }
   
}
