//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

func position(dt: Double, speed: (x:Int, y:Int)) -> (x:Int, y:Int) {
    
    let posx: Int = speed.x * Int(dt)
    let posy: Int = speed.y * Int(dt)
    
    return (posx, posy)
    
}

let move = position(60.0, speed: (10, -5))
print("物体位移：\(move.x) , \(move.y)")