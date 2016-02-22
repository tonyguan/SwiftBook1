//
//  Created by 关东升 on 2016-2-18.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//



let a: UInt8 = 0b10110010
let b: UInt8 = 0b01011110

print("a | b = \(a | b)") //11111110
print("a & b = \(a & b)") //00010010
print("a ^ b = \(a ^ b)") //11101100
print("~a = \(~a)")       //01001101

print("a >> 2 = \(a >> 2)")   //00101100
print("a << 2 = \(a << 2)")   //11001000

let c:Int8 = -0b1100

print("c >> 2 = \(c >> 2)")   //-00000011
print("c << 2 = \(c << 2)")   //-00110000
