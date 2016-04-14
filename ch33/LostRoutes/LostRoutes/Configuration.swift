//
//  Configuration.swift
//  LostRoutes
//
//  Created by 关东升 on 15/9/27.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import Foundation
import SpriteKit

struct Configuration {
    
    ///子弹的发射速度
    static let GameSceneBulletVelocity = CGVector(dx: 0, dy: 8.3)
    
    
    ///定义物理引擎物理类别
    static let fighterCategory: UInt32     = 0x1 << 0
    static let enemyCategory:   UInt32     = 0x1 << 1
    static let bulletCategory:  UInt32     = 0x1 << 2
    
    ///得分
    //enemyStone分值
    static let enemyStoneScore = 5
    //enemy1分值
    static let enemy1Score = 10
    //enemy2分值
    static let enemy2Score = 15
    //enemyPlanet分值
    static let enemyPlanetScore = 20
    
    ///UserDefault中的键
    //最高分键
    static let HighScoreKey = "highscore_key"
    //音效是否播放键
    static let SoundKey = "sound_key"
    //背景音乐是否播放键
    static let MusicKey = "music_key"
    
    ///音频文件
    //Home、设置、帮助、GameOver等场景背景音乐
    static let HomeMusic  = "home_bg.aifc"
    //GamePlay场景背景音乐
    static let GameMusic = "game_bg.aifc"
    //按键音效
    static let TapSoundEffect  =  "Blip.caf"
    //爆炸音效
    static let ExplosionSoundEffect  = "Explosion.caf"
    
}