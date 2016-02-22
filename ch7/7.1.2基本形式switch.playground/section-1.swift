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


let testscore = 86

var grade: Character

switch testscore / 10 {
case 9:
    grade = "优"
case 8:
    grade = "良"
case 7,6:
    grade = "中"
default:
    grade = "差"
}

print("Grade = \(grade)")


let value = 1.000

var desc: String

switch value {
case 0.0:
    desc = "最小值"
case 0.5:
    desc = "中值"
case 1.0:
    desc = "最大值"
default:
    desc = "其它值"
}

print("说明 = \(desc)")

let level = "优"

switch level {
case "优":
    desc = "90分以上"
case "良":
    desc = "80分~90分"
case "中":
    desc = "70分~80分"
case "差":
    desc = "低于60分"
default:
    desc = "无法判断"
}

print("说明 = \(desc)")

